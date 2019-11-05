Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C68EF057F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 19:56:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQfjWtHYjHbi6gVJzV6L04CkPlo/nyw9wQLuAN5gORY=; b=GcqmzXjNN4sAwG
	C8aiqf6T2tXDu5e8ZmK6Sd5s+XBlmxla6RX3KySAqnpvXl4H2P5MXCOdOCRiYmYYheYrKf0Tfe4bi
	QmVyvCDXVA2PrB5INHR/4CjI6wwFLYgfq47MJlAelWbgptCbMNq9X6vSvCyrcHy/5uVLJ5Mwx8KuP
	0coS55mnsaGhuJ+yYbq84ptLbgRvtcb9SQPg2+IcwzaHSm2Pa9eroUeQCiOIxl8P2IUnOFF4/9NoT
	K4YIyqJTFPk5KKG/qBy2Xw6u32Q4gh8EtjbX0Jg71sujrc2XtI7Gj3+1tGM6k72QNfTUSJe9geFij
	5lY7bJu/+9NMeLaeverQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS40W-0000BC-4G; Tue, 05 Nov 2019 18:56:48 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS40N-0000AM-QC
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 18:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1572980184;
 bh=O04SOfhyjtAX9VIh+fecSSaU9Sn317YdJ9++PLMXLq8=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=WENQh5YTQ3eKy17V6PKei1zGcVUtIB+1GFe8G8J6qo0pvNK3ls/9o4zSzwSNHbMHm
 s9ehralIBNbyxbfpP4/WN2TkbOkUmiD76EKLZU/wrn4KCNj0x/KVQJOOo3bBqNqMzB
 ziwPgznkNNrpld77QE9n37bdExHBXHX3yT58lC6A=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.164.204]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MPGym-1iWTqS1pke-004U1W; Tue, 05
 Nov 2019 19:56:24 +0100
Subject: [PATCH 2/2] misc: xilinx_sdfec: Combine three condition checks into
 one statement in xsdfec_add_ldpc()
From: Markus Elfring <Markus.Elfring@web.de>
To: linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 Derek Kiernan <derek.kiernan@xilinx.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michal Simek <michal.simek@xilinx.com>
References: <af1ff373-56c0-ca49-36dd-15666d183c95@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 mQINBFg2+xABEADBJW2hoUoFXVFWTeKbqqif8VjszdMkriilx90WB5c0ddWQX14h6w5bT/A8
 +v43YoGpDNyhgA0w9CEhuwfZrE91GocMtjLO67TAc2i2nxMc/FJRDI0OemO4VJ9RwID6ltwt
 mpVJgXGKkNJ1ey+QOXouzlErVvE2fRh+KXXN1Q7fSmTJlAW9XJYHS3BDHb0uRpymRSX3O+E2
 lA87C7R8qAigPDZi6Z7UmwIA83ZMKXQ5stA0lhPyYgQcM7fh7V4ZYhnR0I5/qkUoxKpqaYLp
 YHBczVP+Zx/zHOM0KQphOMbU7X3c1pmMruoe6ti9uZzqZSLsF+NKXFEPBS665tQr66HJvZvY
 GMDlntZFAZ6xQvCC1r3MGoxEC1tuEa24vPCC9RZ9wk2sY5Csbva0WwYv3WKRZZBv8eIhGMxs
 rcpeGShRFyZ/0BYO53wZAPV1pEhGLLxd8eLN/nEWjJE0ejakPC1H/mt5F+yQBJAzz9JzbToU
 5jKLu0SugNI18MspJut8AiA1M44CIWrNHXvWsQ+nnBKHDHHYZu7MoXlOmB32ndsfPthR3GSv
 jN7YD4Ad724H8fhRijmC1+RpuSce7w2JLj5cYj4MlccmNb8YUxsE8brY2WkXQYS8Ivse39MX
 BE66MQN0r5DQ6oqgoJ4gHIVBUv/ZwgcmUNS5gQkNCFA0dWXznQARAQABtCZNYXJrdXMgRWxm
 cmluZyA8TWFya3VzLkVsZnJpbmdAd2ViLmRlPokCVAQTAQgAPhYhBHDP0hzibeXjwQ/ITuU9
 Figxg9azBQJYNvsQAhsjBQkJZgGABQsJCAcCBhUICQoLAgQWAgMBAh4BAheAAAoJEOU9Figx
 g9azcyMP/iVihZkZ4VyH3/wlV3nRiXvSreqg+pGPI3c8J6DjP9zvz7QHN35zWM++1yNek7Ar
 OVXwuKBo18ASlYzZPTFJZwQQdkZSV+atwIzG3US50ZZ4p7VyUuDuQQVVqFlaf6qZOkwHSnk+
 CeGxlDz1POSHY17VbJG2CzPuqMfgBtqIU1dODFLpFq4oIAwEOG6fxRa59qbsTLXxyw+PzRaR
 LIjVOit28raM83Efk07JKow8URb4u1n7k9RGAcnsM5/WMLRbDYjWTx0lJ2WO9zYwPgRykhn2
 sOyJVXk9xVESGTwEPbTtfHM+4x0n0gC6GzfTMvwvZ9G6xoM0S4/+lgbaaa9t5tT/PrsvJiob
 kfqDrPbmSwr2G5mHnSM9M7B+w8odjmQFOwAjfcxoVIHxC4Cl/GAAKsX3KNKTspCHR0Yag78w
 i8duH/eEd4tB8twcqCi3aCgWoIrhjNS0myusmuA89kAWFFW5z26qNCOefovCx8drdMXQfMYv
 g5lRk821ZCNBosfRUvcMXoY6lTwHLIDrEfkJQtjxfdTlWQdwr0mM5ye7vd83AManSQwutgpI
 q+wE8CNY2VN9xAlE7OhcmWXlnAw3MJLW863SXdGlnkA3N+U4BoKQSIToGuXARQ14IMNvfeKX
 NphLPpUUnUNdfxAHu/S3tPTc/E/oePbHo794dnEm57LuuQINBFg2+xABEADZg/T+4o5qj4cw
 nd0G5pFy7ACxk28mSrLuva9tyzqPgRZ2bdPiwNXJUvBg1es2u81urekeUvGvnERB/TKekp25
 4wU3I2lEhIXj5NVdLc6eU5czZQs4YEZbu1U5iqhhZmKhlLrhLlZv2whLOXRlLwi4jAzXIZAu
 76mT813jbczl2dwxFxcT8XRzk9+dwzNTdOg75683uinMgskiiul+dzd6sumdOhRZR7YBT+xC
 wzfykOgBKnzfFscMwKR0iuHNB+VdEnZw80XGZi4N1ku81DHxmo2HG3icg7CwO1ih2jx8ik0r
 riIyMhJrTXgR1hF6kQnX7p2mXe6K0s8tQFK0ZZmYpZuGYYsV05OvU8yqrRVL/GYvy4Xgplm3
 DuMuC7/A9/BfmxZVEPAS1gW6QQ8vSO4zf60zREKoSNYeiv+tURM2KOEj8tCMZN3k3sNASfoG
 fMvTvOjT0yzMbJsI1jwLwy5uA2JVdSLoWzBD8awZ2X/eCU9YDZeGuWmxzIHvkuMj8FfX8cK/
 2m437UA877eqmcgiEy/3B7XeHUipOL83gjfq4ETzVmxVswkVvZvR6j2blQVr+MhCZPq83Ota
 xNB7QptPxJuNRZ49gtT6uQkyGI+2daXqkj/Mot5tKxNKtM1Vbr/3b+AEMA7qLz7QjhgGJcie
 qp4b0gELjY1Oe9dBAXMiDwARAQABiQI8BBgBCAAmFiEEcM/SHOJt5ePBD8hO5T0WKDGD1rMF
 Alg2+xACGwwFCQlmAYAACgkQ5T0WKDGD1rOYSw/+P6fYSZjTJDAl9XNfXRjRRyJSfaw6N1pA
 Ahuu0MIa3djFRuFCrAHUaaFZf5V2iW5xhGnrhDwE1Ksf7tlstSne/G0a+Ef7vhUyeTn6U/0m
 +/BrsCsBUXhqeNuraGUtaleatQijXfuemUwgB+mE3B0SobE601XLo6MYIhPh8MG32MKO5kOY
 hB5jzyor7WoN3ETVNQoGgMzPVWIRElwpcXr+yGoTLAOpG7nkAUBBj9n9TPpSdt/npfok9ZfL
 /Q+ranrxb2Cy4tvOPxeVfR58XveX85ICrW9VHPVq9sJf/a24bMm6+qEg1V/G7u/AM3fM8U2m
 tdrTqOrfxklZ7beppGKzC1/WLrcr072vrdiN0icyOHQlfWmaPv0pUnW3AwtiMYngT96BevfA
 qlwaymjPTvH+cTXScnbydfOQW8220JQwykUe+sHRZfAF5TS2YCkQvsyf7vIpSqo/ttDk4+xc
 Z/wsLiWTgKlih2QYULvW61XU+mWsK8+ZlYUrRMpkauN4CJ5yTpvp+Orcz5KixHQmc5tbkLWf
 x0n1QFc1xxJhbzN+r9djSGGN/5IBDfUqSANC8cWzHpWaHmSuU3JSAMB/N+yQjIad2ztTckZY
 pwT6oxng29LzZspTYUEzMz3wK2jQHw+U66qBFk8whA7B2uAU1QdGyPgahLYSOa4XAEGb6wbI FEE=
Message-ID: <b927be91-a380-1bba-2b10-f0ca49c477b5@web.de>
Date: Tue, 5 Nov 2019 19:56:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <af1ff373-56c0-ca49-36dd-15666d183c95@web.de>
Content-Language: en-US
X-Provags-ID: V03:K1:0HBPd4tfVS9jcMccgm/pU//DnE0stIF68JhMEcrKFVL2ZEm+m+Q
 r4aFR7q/eNehC5MB9ecdxTvyVuwcnL9VGXK4cFLq7ora6uJ9fQwYPXSCSR89LgLBd7vEVX+
 YnktlkrpiwthwSIYDnlybrKXu6Ql/h0IoMF2V9enWIKYr4CFYqcVqIif59xfSZwDfxKhzX+
 HbBtXjzHUNcqxAU/nwMYA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vkgiOJf5RfI=:sDx8/XBVfqV9PXjQNVQ/rx
 iM5y8XXdWb2jFSbCYOZ2KOX0Wh2w383EtzLhuAfs6beam2m/LNDJNH+Hd4g2NwRpkIt0/cR8q
 lGNRZGGOvh3S1CBo/peyBt/NVgRnHDY5jnI32CSV1LKpHFG4DoaQY9Xdzq4EiUU4Hvw6E5oBJ
 O2gGe80uF+NYDSp+Wh9Z3GZFzWFDeEkVOzSzF2RIf15+U7Z9iHdU6lP1lxrFx6yYOocXMJnun
 3LwPtZX2WdvJEPcLAKdlaiRH4u9Rc5CBsGF/uf8MFWZk2QAH0hM/k+0+diNd0X1hemuRpwpzt
 T/whcA+8LWooa5Feb582LgFCQnvrU/E64m1levnFOcD0CkiL7KII9192qsJsauupXEdIo5gWM
 wlR307vhMBky+6qsDbkfJBDr24yNnyaHr5EdlCwqxsv8TXlqyGAx3sQq8oF8r1CLGvXP6pTo7
 lOlWfNqyH4HQ6dVU7dHTXp9EJrYgy4EdiV+y2sMkaDAUNa7vJulSaMYR24BwBSLnx4Cwqh0f9
 nnE4Paf3dmmEKbvImAZ1QZwRyNFL9Ud7lWB8Wy7kP2TdAJqp9rhYIO894ZQ1k8o5pxkuBUG/a
 st2hFcZBClIlyMF8Aoy4bmKeTT9nqZttuF6er8hWVTLympWz4wxj+hvMuEUSZkk5/n1Rxg6Ei
 NACLoaQIc7wvvI5y9OEJ+zQ/LhKXDqJ0lfVPj4Vajy8TBkwvoNAfvh9XiVHJW/mon2ihg1LvX
 T8fccNgJj8nJjHzKbKE8raB6jqzH+5zMOk58YJMYmQ+0O2iEXzJexY8N0obl9hbEL4Xd72EMN
 by+Krlj35ffAbwbTHFgj8QLbZHptDlK5/nw64Mnhd4jGjp6SnFdg4DQpHL7SvcOKw26s8J0Un
 OInrTZpvaLx7LHiVgr0qMam6Z+X5XOP3Y41zgQsJPkJn3lhCTuAAQPhEK15rWEUXyhWgT+RDl
 KFy+7JbR1UCg7AOk1re5Ec+1f6jy3SgfzJgK6gpWas8wS2ywcbIr4wrh5KKtORCKgio0oBQkd
 mcYLofjBtb51vV/JTadXNoSGUcnYAvt3sWJKBWbKle054NKGKjOnrVV90fj231rnBFjV90F40
 h9TofE5LTFb+H563LgSX6BudOHJg1K/5CGJ/lvNE/MezUv2AaZW1BFZyt4ZECpN2Arv+Irx4S
 WbdQWWI8GkNQV6Ix/nBeNKKuj/Hfzh0dMBW6ZN0BDlPjkCu7C2wJ1rgBf4KeUdYVc6f2nJHiY
 PhMkhOqRkpH5wCTUw4dqcIAfLzWqiG6U+7pYiyz0dTuio92eVRNfeTITeB7U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_105640_146134_882F3571 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Tue, 5 Nov 2019 19:32:25 +0100

The same return code was set after three condition checks.
Thus use a single statement instead.

Fixes: 20ec628e8007ec75c2f884e00004f39eab6289b5 ("misc: xilinx_sdfec: Add ability to configure LDPC")
Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/misc/xilinx_sdfec.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index a622fcf4954a..322d5c6e6d12 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -653,18 +653,10 @@ static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
 	if (IS_ERR(ldpc))
 		return PTR_ERR(ldpc);

-	if (xsdfec->config.code == XSDFEC_TURBO_CODE) {
-		ret = -EIO;
-		goto err_out;
-	}
-
-	/* Verify Device has not started */
-	if (xsdfec->state == XSDFEC_STARTED) {
-		ret = -EIO;
-		goto err_out;
-	}
-
-	if (xsdfec->config.code_wr_protect) {
+	if (xsdfec->config.code == XSDFEC_TURBO_CODE ||
+	    /* Verify device has not started */
+	    xsdfec->state == XSDFEC_STARTED ||
+	    xsdfec->config.code_wr_protect) {
 		ret = -EIO;
 		goto err_out;
 	}
--
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

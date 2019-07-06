Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38DF60F0B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 07:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=taOtbgpm8Gk+a6w0lF6doEpAoRSUjCYfCF9MOUhpmjg=; b=BCv37aHJh3teIt
	9ByUx79AtHKNJGwjAKgo+o9wUq+oouyuE9vaPJVBjrzNpyv2kxiimOnSaC3e7wXJ6lygjMNyoUpy+
	l8p80VAuOBwcHaSgNYXPxH6DfGvpxAuSyCeBdcmhhCmNfQUI12leUpK7WDZMxEhOhoRkwtsDSUowb
	685BbujlPNLzyDvOz/1jHIRBGF11RR7wHQwxytgC/2HjcTAsssLFleQkPMhFOnu+SlGRx0INEKRL2
	+zSvnGvjNa99zhP/nB++l0ibmfKJZcFxyGwVwMMQvt8+VdaAcdHMy8zqjDPDtgAeGj8T7uE36DJMa
	v/AImziWcrLQ0rIpiG4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjcwS-0007dF-Km; Sat, 06 Jul 2019 05:08:56 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjcwC-0007cW-Hk
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 05:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1562389703;
 bh=lmxGWQ2JJJHm+/PXo9Tfxjo0p45iyTLgmQtvaoLdWkQ=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=OkVRWmg56oH2Cmfbi69i7XbSJBK4QJErdT+evLBiRcC5UYwxGJk1WmMk+Xovbjo4y
 LqqhVXNKse5fJ6oCqcPwTpfH653QZoO6okfqIBgd6M2dY8ptvVKCrK0/lCvhd2OijF
 737yZpTRLxOIGXJGjKdtUyFvuVanR3I0j4n8BZ/Q=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.148.45]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MRCnT-1hwZku2LwV-00UdZX; Sat, 06
 Jul 2019 07:08:23 +0200
Subject: Re: rtc: zynqmp: One function call less in xlnx_rtc_alarm_irq_enable()
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-janitors@vger.kernel.org
References: <6f1db217-cb0a-9f6c-0e2e-5d932103f6ef@web.de>
 <20190705223617.GC12409@piout.net>
From: Markus Elfring <Markus.Elfring@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <8cfcff58-42fe-e7d7-0133-ad76a955e2f6@web.de>
Date: Sat, 6 Jul 2019 07:07:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190705223617.GC12409@piout.net>
Content-Language: en-US
X-Provags-ID: V03:K1:PRyVH0ne2XjDN1ZlhyuWVG13jii358lBulwPpjlnjWdplkCoFDa
 oBVkdf85NY8IcHUSgNaCOGgNTFexwq0vDTOcw5SBem7O8NseTKNTVs9UH6AbZkInlszvE7C
 FNXz2l9l4LDEzWw03PvsA6KDmH9F09KVBqDWiQz7kCD7jNuFr0xkzgsuWIsKSNvl789Xsa9
 MYjuBah/qX29SO9HeGBOA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6Yi3eueX1/g=:Nadv4thhbxzXVyyaF/WY4Z
 rYq+O3OpkSNiY5Cr2tfa7O82OCHxhWyNrfyWzJWM40oQEYVPaMdO9WL5Y3G/p3K/IMnG3e5Fo
 vGLwRZ+/sIEVmasHhcLjmQJSPBczJwbJmUbk8ay/RCbgj7QY4ap995ODkze4mj3J+pYhP9qEY
 PK1Owv6Gs0BKBINj56+1v02GHwBfBWlODK+8RLPYiEoTA42Xu3hm7aSwsdMPMXeNbiviiYffi
 a3YEaihoYRjD7Pikwvtns5w8LFVATgHtRfHWwfcgJmsOb+MU2LvYuk7BM2Z3uq9d3BiH9J/Kz
 wE/8MR3dgDZeiKnaHTgd2b1NVhFNpu0Jz5UyPj1MQjU5cknZNoUT6s5YPY2p+iEW8h4/XziuL
 ZIKxEH5qQLtAQIkleE+32r5D6JdqxbGWkkZ3z8fsdr80UlqSNf+6HjhjW+DrdtJKQjR5hTpgI
 uCDFIpWqyIdVOPkrWiyBjA+SloHWd+2N7xvVheVgCYaQCKVRrXNymwYZbx40MnNDIy+3LadXc
 HBWG+rlK9gqfPjguPh/H6GrG9gH5xs8GiyjLBedfC8im2sJ2xwAjRLv0FkXz3Uhb8w0Aml9M2
 bJHuPVZHxis7zA9vuBNi+gDOm+gnfRFIMrHENBBgAjdmav8dMVZj3HqtRMjlqsOW/ahJtavL/
 U3B0xPgDjTRb/Wy3+NFDhndVlIQbVchMchXGS8yquH+hw2P6Zy1XpbHsMuoLA5z7qGtS/Mk/u
 KyE2iVLzwun+zHCu7AHV6t8pOU60TXnGIJgooScuWTv+GneePBSpuivScLyP6TZuKh67tzH6M
 6+wPKW83CLj9s2m8M+d3qiFkFkkkKtLQa1fGaFS0MEGwhjGOpYwA/0pAd4qJjd+dsxB4G17N8
 ETiA296oXP59nkknw0XiDCHKbxTX/m/yvLfZ8mneR2LcUY3K5SHkRyiXflOimgmBwagUCgi5o
 YZ0lcihgf6lO2yifb4qwIq4ePWOM3wuP5BFWG3O8lFdIzNwS6M2gBk6czOQmkpgRJxPGogKMH
 rk+qY5omgCBxZ7rcYxHE2wHVW6oV22xyEcDae+VzC2GfYPySgZaCSK7JXFpKSaARHeJ7MqcmO
 X+y1jWwxHGpm7kRfJ5g25b+5WJYttZKnzYI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_220840_927952_9FB83E43 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alessandro Zummo <a.zummo@towertech.it>,
 Michal Simek <michal.simek@xilinx.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBVbmxlc3MgeW91IHVzZSBhbiB1cHN0cmVhbSBjb2NjaW5lbGxlIHNjcmlwdCBvciB5b3Ugc2hh
cmUgdGhlIG9uZSB5b3UKPiBhcmUgdXNpbmcsIHRoaXMgaXMgbm90IGEgdXNlZnVsIGluZm9ybWF0
aW9uLgoKSG93IGRvIHlvdSB0aGluayBhYm91dCB0byBleHRlbmQgYSBzb2Z0d2FyZSBkZXZlbG9w
bWVudCBkaXNjdXNzaW9uCm9uIGEgdG9waWMgbGlrZSDigJxQcmV0dHktcHJpbnRpbmcgb2YgY29k
ZSBmb3IgdGVybmFyeSBvcGVyYXRvcnM/4oCdPwpodHRwczovL3N5c3RlbWUubGlwNi5mci9waXBl
cm1haWwvY29jY2kvMjAxOS1KdWx5LzAwNjA3OS5odG1sCmh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2NvY2NpLzNkMmE5ZDlhLTc5MGMtYTBmMC1mOTgwLWI1NjA1MDRiYWJiOUB3ZWIuZGUvCgpSZWdh
cmRzLApNYXJrdXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK

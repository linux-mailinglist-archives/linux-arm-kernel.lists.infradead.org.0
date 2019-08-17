Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0336E90DDA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 09:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97iH8gbjk85lcdt/DxM3Y27ll393z+YCelqL65FCETw=; b=RevxjJe9FwuBGI
	ZFasEPtODRb4BP6J1iaauZ1O410thVdQHpjJ+yRlvBKFYYjVgSs7bTBWdbBFLNgII4yOcGGToyWj7
	RG9sxTTe7wuk2m5z4UNbWc5h68T3D1eqpkUENNK4L/KkOGbQqBRz5QHKLxjOfq14zVSw17YGCFjUq
	KstAp0g+OLh32G9qwGs7I0E9agL06pgKv381i64yDb1cPi+U/GR7UXOTvFao0K0ZwBL7qIfKcf648
	gc2PhCzG84oymMXJXROb6/HBGuaGwnQ3wY/KjWqg+ANW3g9WaYS/bvTQ99g+vEtijv+oK5AGTOmPN
	eE9CCCdS9S1SM5Z2sqjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytHw-0007Pd-T0; Sat, 17 Aug 2019 07:38:13 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hytHT-0007DL-Q6
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 07:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566027461;
 bh=79c1Qiwd78Z6gHB2H4pQRBwu61ap1LwxLc8fK5Abisk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=aqqDinUs8x1ZWLI4/bv3y1TUw7pISC2n0sDegzGyd0bXDeuTIw9HLIkLZQI4zpmrZ
 dtjLRcE9nusckyx4Ucjpj3roLG5Nm/5h3lfnH0V8/E4CjZF8U1vwnoR+FHsZZbjsa7
 Rxw2G8hTE2VAyzPD9dhIus4muuRLg0553XwYnP2Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LjdS8-1ia8p221u4-00baXc; Sat, 17
 Aug 2019 09:32:04 +0200
Subject: Re: [PATCH V2 08/13] i2c: bcm2835: Avoid clk stretch quirk for BCM2711
To: Wolfram Sang <wsa@the-dreams.de>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
 <1565713248-4906-9-git-send-email-wahrenst@gmx.net>
 <20190814193628.GA9756@kunai>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <bb924d04-b4a9-56c7-c7d5-31f3cc8c1da3@gmx.net>
Date: Sat, 17 Aug 2019 09:32:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814193628.GA9756@kunai>
Content-Language: en-US
X-Provags-ID: V03:K1:MYYp/EY0zAmFLDdjas94knWfcnTU3EQgK4637yghfQalxZkOem6
 iQS5oBLTT6i9RCppasf/mYECnDySmMTKWswDhTOYC1fmOtzWdfYinEPNmiJAWbRfbvb6GwH
 8A2Go6sXdtfVoU2Lmva1IJUonQEbpvHKigI31xDLH8u8VlkBf2EuBJ0lLJEWNeFGr49a7fl
 8WVeJB6VIy6hDuz2Dg/qA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OP5e19qk3qg=:eSxYnhxa4Wi6Gbim/MocVX
 rf5k/yS/1yzf6hxnPtxJkI0bkZnQ8BO9lIgNP69MYrACXwbEfiTecDBEkxRyqDOJfwvU2PFO3
 6+nYQ1ayy03U5zeExpOztzYvwgcWSDPMRd6twlPOs8XiAXgr/z3ijIkXQztuqKDkw2s0hh8PL
 pvGSa6EDFFM0ZK97h6/V/IvcrW/8amTVrbYw24zBDclLWOzCtWprHuns7y0dv6ue6MaUeHXjT
 6GcqHu2RXJpGXg9rEYxsNmslG0hhBhQOux9IvPOooFjCDxrLx0ToWHAaHzeUmRw45hV1+l3mh
 pPs21CqR7W1xCHiitj+1X19mSlGN0Cz4P9aaZgtk06/8MT1vD4woZcG/lvAjVi8RPmB74Jaw6
 X4Dlp8GJxGrAuHZRsJW7ZW4q/fVUfJRc3b8y7TXr6U9AZIxoe3LDRgc/8ijfe/qgjRMUOtKE5
 KpALda6zNBdbmCk+QZ43dJ1UgMBrDf8Co2G74ohttuzgcUedEzW1e+Fian/CiQqnW8xRnrEiV
 GAKQNwpNjyilS+c5SNkHC3M3hMilWria2RiPDlUE83sjnnXzaQNzNYfWh6p4Bts/g9QCRY77i
 OOrAMrrawfLqZza9lj7qjsZTSuh/5vkvNDCMrGD0morgS/CfTdj2w00Vd65iJL8RCo18g07oS
 JKCi6jWljgWdz3+0WjF2PA98Z4qVNB0ZkYumuwBg3cIRR9GfpEnco7wcbYNuLODcIsqDsMXAu
 Iyzp9aFnX9fbQfMwwySXrxbLffkMq4YeJcKnyLui7XyJQ6iflnOF6CuG4xH0DXexVWEW+bbTw
 MNDoxqpa1Y9b2oUpsTv4nOrOYRa8diDcM4IyQCpR0RlQo3WUfcZg1u+LVloIdGo4I8VkiXZSQ
 T1V58XfnZcrqK35QhSUJBxYDXlR54Kp+OaPpNIGYGtguUV0JtlFuEFtuZ2ldQ1KPHySFAdAj/
 SKO+Nw3A5fDpL2BLIW0pYg5++JhRDyIqhG46JFH3RsTmlGZkK3VY8f2NG0JbYF5TEk2tEWkEE
 CYLk+lV/vXGwgHeADNQFUy/I4mG8rejQqE5e/TVPs1C86ObeSk2/MWNoMWNAMhqNfH/kPwu8I
 h2LwzuS6J3ZdmyhUzJS/W32gYZy5Y7u/PT3i6LuxD1Ovyhoqw6JmPCzimNT7lEvmkQQ+vw+JP
 2NOCU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_003744_180839_8A7992A9 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Michael Turquette <mturquette@baylibre.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wolfram,

Am 14.08.19 um 21:36 schrieb Wolfram Sang:
>>  static const struct of_device_id bcm2835_i2c_of_match[] = {
>> -	{ .compatible = "brcm,bcm2835-i2c" },
>> +	{ .compatible = "brcm,bcm2711-i2c", .data = (void *)NO_STRETCH_BUG },
>> +	{ .compatible = "brcm,bcm2835-i2c", .data = (void *)STRETCH_BUG },
> What about simply putting a pointer to the quirks data (or NULL) as
> match_data? Then the code should be:
>
> adap->quirks = (cast)of_device_get_match_data(&pdev->dev);

quirks = (const struct i2c_adapter_quirks *)of_device_get_match_data(dev);

would hit the line limit. Do you insists on the cast, because it's
actually not required?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

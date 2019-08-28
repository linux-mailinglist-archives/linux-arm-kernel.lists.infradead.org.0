Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26620A034E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/QZSD4MPWE7ypQpa99IDiOK0ja+ep43yOvL693FfSA=; b=bII4LJLJ6G5yCO
	ouRTLor7iSnGkjyw+eP1nt5QrLQ6N9ePtCCrlSSo3H2pbWJkZ+GSiBIaHpY0dDt08HB524Slseqxi
	OIfbl3I3AKPFqqio2NB3HSw4tL+u8VXBa78uiy8ciK1LIP8c5Od+USfdEl8uPdmTgRGcs/NEfruYq
	Iii7RVuF5WFrh0X8s4V0jHfvnW60COJO0ZxU0X3CGdZdkxiOEZvYKiruQKvbjxGpLrW6QBSUqE6hk
	sQibzVB/3HgZAGnxeRk6HC4pQ3Rl6cDMj1AW+Tec6jTYzsjvFq08Qvr+B6LE0BoTpUVUM6GI0mxLn
	wiD5hW1athK2VsvNn0Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2y5p-0000qb-9E; Wed, 28 Aug 2019 13:34:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2y5f-0000pj-Kl
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:34:24 +0000
Received: from [192.168.1.17] (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C73412339E;
 Wed, 28 Aug 2019 13:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566999262;
 bh=Wr54NI83bMpyXaEztjls1DUnCnQYPgiyLdE1sjyNxlQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=jbiK7gaBFdskrYs8/YWVQA34MqdEEbs+AZKoLkLe4MJrC5JyYaAxq+6tjT2hImJnn
 lw+e1YqKsYHtW2d9eOfxZPo5nVsJyE2NnOMjDCEOsbykLoYkeJOZUtKZBdBGKHQOcF
 1xib9MERTpIW23ahudscdrtFfJB5QaVLufv861Ig=
Subject: Re: [PATCHv5] drivers/amba: add reset control to amba bus probe
To: =?UTF-8?Q?Valdis_Kl=c4=93tnieks?= <valdis.kletnieks@vt.edu>
References: <20190826154252.22952-1-dinguyen@kernel.org>
 <30608.1566933924@turing-police>
From: Dinh Nguyen <dinguyen@kernel.org>
Openpgp: preference=signencrypt
Autocrypt: addr=dinguyen@kernel.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <46bcf493-9dd6-bf5b-089a-be158739a13f@kernel.org>
Date: Wed, 28 Aug 2019 08:34:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <30608.1566933924@turing-police>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_063423_728464_291772DA 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, daniel.thompson@linaro.org, tony.luck@intel.com,
 manivannan.sadhasivam@linaro.org, keescook@chromium.org, robh@kernel.org,
 linus.walleij@linaro.org, anton@enomsg.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, ccross@android.com,
 frowand.list@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512



On 8/27/19 2:25 PM, Valdis Kl?tnieks wrote:
> On Mon, 26 Aug 2019 10:42:52 -0500, Dinh Nguyen said:
>> The primecell controller on some SoCs, i.e. SoCFPGA, is held in
>> reset by default. Until recently, the DMA controller was brought
>> out of reset by the bootloader(i.e. U-Boot). But a recent change
>> in U-Boot, the peripherals that are not used are held in reset
>> and are left to Linux to bring them out of reset.
>> 
>> Add a mechanism for getting the reset property and de-assert the
>> primecell module from reset if found. This is a not a hard fail
>> if the reset properti is not present in the device tree node, so
>> the driver will continue to probe.
> 
> Does this DTRT for both old and new U-Boots? My naive reading of
> this patch

What is a DTRT?

> says on an old U-Boot, we end up attempting to bring it out of
> reset even though they had already been brought out.
> 

If the peripheral is already out of reset, de-asserting the reset has
no affect.

Dinh

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEoHhMeiyk5VmwVMwNGZQEC4GjKPQFAl1mgtYACgkQGZQEC4Gj
KPRKMRAArFO9bQ7FCE4oiVgO/sOLm2M/ngGD3Czi6Y8TcAbIk4EylBGVw634Gs4Z
v5vuyxShlfApBb0PqfhLOo5cXrTyMdpWOq9AQ4vEcEU2MPKN8QcyLczvEagyYcwA
ianhTLR21v1Gdfm5MHqpKrNxSrb6Nt6cWmYCXjpabLYZg0gKJnsYl2XheHIdUJ02
kD2P6sQC3mf3OC5Gou4JXZGvDMgEwLG9lHsb7YoFq6tzZW3YQvAi3HcxIZZh4J8b
jFcPR3RxxQgGwESEGDWQu2EzY/d9qStEQ9VYHl/v6QIL77S1oXUAXLbh3e6ZoSgt
M93eK2G9wGCL5JlUbHXQ402OfewHchgQW1bDpjkaZLL+d9jUiGLqALAj0Az2FqX1
HtPPtifB4z6TuaLkxNTZ1Oz7UR0cWtKeSYjsuIwi0XzQMXopgH7oKdzJajNlAfRJ
In6fSVuwp47p43wj2dmUtuCSYvzKTHAg/sVGaufEfsT8ZINSOZJY9ivDqkJIzlDR
nsOclhfOGs5PgL4NPFW5U5O58DzZ5yl9NEotB4ahacuOqJv1PUdT3gABbL5hUogx
QTAPNREbYesG3osFLeEXeachiNChyJ7r+NyWFly7RXA/ukxoer2Rkxt3h0hQib6Q
/jhAsa1ar1NEk8dJJfNO7R5pZkG7ZCbhzuSDKPB2yRZPDeQGol8=
=SFzc
-----END PGP SIGNATURE-----

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

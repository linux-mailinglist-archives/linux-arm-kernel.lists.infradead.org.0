Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C7FA5F31
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 04:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MRQ++tLU9lsrMwUzYe5h+yAAwNMLXkZ4v6ipTxGy4v4=; b=K6xGxCR/ANpGBn
	Ovyfm5FlKea0maDMYT9nTL8GHstqtmY3jAnAgTUCfOSK6BQghv5PvSzHR0SgbD16VZRGGifOtd+Bd
	begDq3cn7YAQv+GGd3rzcY5aleI1dQwQgDncR34smPWU84WrWVt0x/vtm2Lp0oyl9SKm9Ow+QErFC
	F5dD/89xzAazM9X/Z+T++R2G2ZlvXxPQaKeL8JB6u065TRStfzCEwnmKxwiu/kurf+wT79kW+CMCj
	VlzFB+qbxmexR/6dIuIaCXSIeG6hXhcED2crmgiv0RWP8z1lBwqNAtlhkhHD811uJMzcg0LWMPthU
	fCVAd2Vk7dX/9hQ/gaLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4yHX-0007Bg-BI; Tue, 03 Sep 2019 02:10:55 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4yHI-0007BJ-4s
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 02:10:41 +0000
Received: by mail-qt1-x841.google.com with SMTP id g4so17750812qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 19:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :cc:to; bh=8YDLccInGWFdS69PIwuMSSYlryHoVdSUZ0l2DD25u48=;
 b=XaSSavAic+WaMS3qYO9pgU1eanGZSRHlvoBBUYcVCUO3lTBFIFFTII+TPYvVTLJbPe
 XmXBH03s4Ki5GjB80ExcmAGfZN72j5Vzv+dJskX8h99cBSQsIMZSIhW+p2kGL9dHzwbm
 34OSeO3gKKnMHNAM4gI4FBWufThv5RkZLZUQE5XFKT+eVCrT7ertViTMv9juEBGTVUz0
 EVWw66sTgL7xDPTAnxB3qfNQqmn6is9wctuAKV/TwzCb2jDuNkxWomFKJJG6SVQy4jM8
 qCWVUQKxYIuzmVJ5v7PSswIxJXEvPLk9I8w0KVBvDO51DyjPIzpbsWVRejyZhUMOF4Hc
 iKmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:cc:to;
 bh=8YDLccInGWFdS69PIwuMSSYlryHoVdSUZ0l2DD25u48=;
 b=ToIsv95WWMjkLLtVt0x10Vgpi/8PxdFKjMN6AuC8QTK/m6miQTOcLsj6PbPUA6a8lL
 rbRL6JUEMfNgUU6OJwCVikjfWkaaEpN/+pf5txLPuLJvUPtFBAxEkgf6weJ4tRZvYfRT
 WzqKFZVMFD5M0rpI2ao3ebUvKYzDEeb01izZMophAxezyHRvt5u/IMkb9ZfpIlFhCaCE
 y4UDuAaZUJQdk7BMQ1+LYOwGNatUcd8mZz9FoH6ib8/UJfKqGcBQE+kWRXuXMVLuBJhd
 IFxWDf2ihDPx47dzV4wgWtateowhcA0rxH2W6onYUN1hZxHTlEmF4C4Torq+Cbps77Ur
 PC+w==
X-Gm-Message-State: APjAAAXuTRSgGhYFexhxq4YDamm2DQU3ufoUfAP5plAqCI21wDW0BwjR
 imQ0ZGP8nZCIGcu1vGk0xgqo0w==
X-Google-Smtp-Source: APXvYqxLPDAlLeyMbcJ66s5qx51UpP2ouQ1zTec9Dt4SRWeQgeDYKf/fWo/nLgpY5OFrjijmoQ7iwQ==
X-Received: by 2002:ac8:5204:: with SMTP id r4mr12538545qtn.332.1567476634260; 
 Mon, 02 Sep 2019 19:10:34 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id p126sm7897774qkc.84.2019.09.02.19.10.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Sep 2019 19:10:33 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: "Rework enabling/disabling of ATS for PCI masters" failed to compile
 on arm64
Message-Id: <63FF6963-E1D9-4C65-AD2E-0E4938D08584@lca.pw>
Date: Mon, 2 Sep 2019 22:10:30 -0400
To: Will Deacon <will@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_191040_192403_1F502BA1 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: iommu@lists.linux-foundation.org, Joerg Roedel <jroedel@suse.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGxpbnV4LW5leHQgY29tbWl0IOKAnGlvbW11L2FybS1zbW11LXYzOiBSZXdvcmsgZW5hYmxp
bmcvZGlzYWJsaW5nIG9mIEFUUyBmb3IgUENJIG1hc3RlcnPigJ0gWzFdIGNhdXNlcyBhIGNvbXBp
bGF0aW9uIGVycm9yIHdoZW4gUENJX0FUUz1uIG9uIGFybTY0LgoKWzFdIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xpbnV4LWlvbW11LzIwMTkwODIwMTU0NTQ5LjE3MDE4LTMtd2lsbEBrZXJuZWwu
b3JnLwoKZHJpdmVycy9pb21tdS9hcm0tc21tdS12My5jOjIzMjU6MzU6IGVycm9yOiBubyBtZW1i
ZXIgbmFtZWQgJ2F0c19jYXAnIGluICdzdHJ1Y3QgcGNpX2RldicKICAgICAgICByZXR1cm4gIXBk
ZXYtPnVudHJ1c3RlZCAmJiBwZGV2LT5hdHNfY2FwOwogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIH5+fn4gIF4KCkZvciBleGFtcGxlLAoKU3ltYm9sOiBQQ0lfQVRTIFs9bl0KICDi
lIIgVHlwZSAgOiBib29sCiAg4pSCICAgRGVmaW5lZCBhdCBkcml2ZXJzL3BjaS9LY29uZmlnOjEx
OAogIOKUgiAgIERlcGVuZHMgb246IFBDSSBbPXldIAogIOKUgiAgIFNlbGVjdGVkIGJ5IFtuXTog
CiAg4pSCICAgLSBQQ0lfSU9WIFs9bl0gJiYgUENJIFs9eV0gCiAg4pSCICAgLSBQQ0lfUFJJIFs9
bl0gJiYgUENJIFs9eV3ilIIgIAogIOKUgiAgIC0gUENJX1BBU0lEIFs9bl0gJiYgUENJIFs9eV0g
4pSCICAKICDilIIgICAtIEFNRF9JT01NVSBbPW5dICYmIElPTU1VX1NVUFBPUlQgWz15XSAmJiBY
ODZfNjQgJiYgUENJIFs9eV0gJiYgQUNQSSBbPXldCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8953D0D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ic7/zE8XRpHSXmIQKEZPZeQJLs84wBgjtwrz7TTqfc=; b=ZdrGkElecigaGd
	JiYDygpgdiiG8m+yLUCBJCZ9LZjF6veUEHtPMTHFODkNKySIfnevTpkg5jGPXXEhl3rsmAE/Eb0uN
	qg+WKmhDL22H5HWKBxFL8+dnExDBDf93KswvYAV3XvPlOcpLCXcaHUh6VHAh1S8GCyxWqI67mLeL9
	HxJtBhphipcqRI65Ii5Q7irvATtOpQxB7ZPmaC3KN4A+YnU4vtxi1nv/LBbBsfv3yW8HoeG85kkzt
	xWG2q+gdorQfNZHSTJCb56u/a2gqUQ5httvfBOF1TDofd7OvgvHHR9q6xdIfNvm+3aCMqqXNKXgL6
	fUxrSjS3v2MXoOq/5sOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haikr-0002Xl-GM; Tue, 11 Jun 2019 15:32:09 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haikg-0002WY-6X
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:32:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7dehCSJCTwFKLo6qi0YrEJ2FY1wwanjr9cq4GNyoleI=; b=YPmbvfNXdaSEyKl+QXi3zqLVX
 yToOezOy6VVWlLTLHNSh/R6sqmz4J2LTcN/2nQFfsbZfxnANfazfAVUgYon0WnrIo8MHCaaX0RMEV
 Xj21wmsOYcPb2zmFhlwjyvgUU0s5OMbp2Mn7Nn8Cq5pFZQSkNfsAEOiUG1N1vy32tYChL4Nqh7Ue+
 2yyndnKvgRNLYaQpik9MMn89EejFiGQmS3qGtqxBaahk8Wxmc6Q37X5Akk6XrWJ7iGT+romIiv4RJ
 HET3eumBynbGqCczu51brGWSwxQmzgPh7Y7xrumgglVDE0zLt8pL2xzg60/PgRuEEwD223HrtSOlf
 xgsPiDfhw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52954)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1haikX-0006Op-Kj; Tue, 11 Jun 2019 16:31:49 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1haikV-0007xg-CW; Tue, 11 Jun 2019 16:31:47 +0100
Date: Tue, 11 Jun 2019 16:31:47 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jan =?iso-8859-1?Q?Kundr=E1t?= <jan.kundrat@cesnet.cz>
Subject: Re: [PATCH] ARM: mvebu_v7_defconfig: fix Ethernet on Clearfog
Message-ID: <20190611153147.djcbzgeea2chn7ic@shell.armlinux.org.uk>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
 <87pnogzxmy.fsf@FE-laptop>
 <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
 <87mujkzwkr.fsf@FE-laptop>
 <0609d750-de5e-49cb-97b5-43772c5bbe0d@cesnet.cz>
 <0f5e7886-f722-44ac-b64f-1f372a52938d@cesnet.cz>
 <87wohspdi7.fsf@FE-laptop>
 <20190611143239.3v2cpg5o4u5gxzzw@shell.armlinux.org.uk>
 <87pnnkp3i1.fsf@FE-laptop>
 <537260c6-184e-421e-8d29-414da62a747d@cesnet.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <537260c6-184e-421e-8d29-414da62a747d@cesnet.cz>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_083159_191351_6C41BCAD 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
 "David S. Miller" <davem@davemloft.net>, Baruch Siach <baruch@tkos.co.il>,
 linux-arm-kernel@lists.infradead.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgMDU6MTI6NDVQTSArMDIwMCwgSmFuIEt1bmRyw6F0IHdy
b3RlOgo+IE9uIMO6dGVyw70gMTEuIMSNZXJ2bmEgMjAxOSAxNzowNDozOCBDRVNULCBHcmVnb3J5
IENMRU1FTlQgd3JvdGU6Cj4gPiBKYW4sIGRvIHlvdSBmaW5kIHdoaWNoIGV4YWN0IGNvbW1pdCBj
YXVzZSB0aGlzIHJlZ3Jlc3Npb24/Cj4gCj4gSSBoYXZlIG5vdCBiaXNlY3RlZCwgYnV0IEkgdGhp
bmsgdGhhdCBpdCBpcyBkdWUgdG8gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9YTEwYzFjODE5MWUwNGMy
MTc2OTY1NmMyY2E4ZTFjNjlhNjIxODk1NAo+IAo+IE5vIGd1YXJhbnRlZXMgdGhlcmUsIHRob3Vn
aC4KCkNvcnJlY3QsIHdoaWNoIG1lYW5zIGl0IGRvZXMgbmVlZCBiYWNrcG9ydGluZyB0byA1LjEs
IHNpbmNlIHRoYXQgd2FzCmludHJvZHVjZWQgaW4gdGhlIDUuMSBtZXJnZSB3aW5kb3cuCgotLSAK
Uk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVy
L3BhdGNoZXMvCkZUVEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5
bmMgYXQgMTIuMU1icHMgZG93biA2MjJrYnBzIHVwCkFjY29yZGluZyB0byBzcGVlZHRlc3QubmV0
OiAxMS45TWJwcyBkb3duIDUwMGticHMgdXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

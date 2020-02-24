Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AD116A496
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 12:05:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2aFomtCSYtxqyK+9OLVdCn6WagpfWk7MF8YdYJKvw4o=; b=QJPG84b9Z4Afyo
	fPDvUElajLQ1HaampJ19oy4NFk631l9Wo1HRnw3gzCCWgxetMnObF57letsxPUZ5/+EMjKvUc+9+a
	r5IYupbFR7FByVpYQnsySjF3UFlQPlgsoyiYtdNOAxIXRJQJrOef89ErRYlSsSkeLra/NnN10YPJy
	RP7tLClLJjnp88mbNHYkt1j1O1ySAoRkZjhsQifVU0/qOM2z2UU1x2Lfu9njyOkSssccVWPU/AHmC
	RklI8SLQ7TewrjvEK994vpd/xnXrzy6yUW+7+9Ke15Cw2qtQ+YJh5rho6ONE9IEg2xHl0WPXK2mjY
	SZuuF05yN/kENNN1ok3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6BYK-0003Kd-3r; Mon, 24 Feb 2020 11:05:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6BY8-0003JK-Qp
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 11:05:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sHN98KwOYJN+qlU1gS3IfqAfcMQjoxoEW1b1XK4/Ab4=; b=pFXROtpW4Kw2pEqeoBtfAsJFb
 +so3asbo5T812Z5px71FZ2Wwa9TAXgPUhXtGMu8BPzVOKTBMxLS3ewPh/pfTXsPYAHuydcIZxwOdC
 ieQGxSzCm/7G81F0aTMU49A7vEXs3JUvKSM7ZlHakqQDjErOOWbSgp1e7iUgYTo65WbJfpRVpKb50
 BOeypRUBduVR9I3CvI3VV9Bzzd8ROMT/5OVNBQQW6oLseDtoFUNQNBrMhJCX1sht5dKc73u78B2Lo
 qhhhm2OXeHyB0xn/KfI4ZdpPFWdMYV49wQLgQvmkXyQoJwOib5ZRLOTwcEm+SU6ii+MmixJRsxpi0
 XGa8QihZA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:56244)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j6BXx-0002I2-VT; Mon, 24 Feb 2020 11:05:10 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j6BXw-0006Ms-Ve; Mon, 24 Feb 2020 11:05:09 +0000
Date: Mon, 24 Feb 2020 11:05:08 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: yifeng wu <y1feng.wu1234@gmail.com>
Subject: Re: Subject: [PATCH] arm/kernel/head.S: optimize
 __create_page_tables function
Message-ID: <20200224110508.GP25745@shell.armlinux.org.uk>
References: <CAKy1Xqcnkfm7Dn9UvJ7Ufio-szQ75kbGS+GurBjuUFBydi21GA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKy1Xqcnkfm7Dn9UvJ7Ufio-szQ75kbGS+GurBjuUFBydi21GA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_030520_871565_B5A72056 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgMDY6Mzg6MjJQTSArMDgwMCwgeWlmZW5nIHd1IHdyb3Rl
Ogo+IEknbSBzb3JyeSB0aGF0IG15IGNvbXB1dGVyIGNhbid0IGNvbmZpZ3VyZSBnaXQgc2VuZC1l
bWFpbCwgc28gSSdsbCBzZW5kIHlvdQo+IHRoZSBwYXRjaCBhcyBhbiBhdHRhY2htZW50LCBhbmQg
SSdsbCBzaG93IG15IGNoYW5nZXMgaW4gdGhlIGVtYWlsIHRleHQsCj4gZXhwZWN0aW5nIGEgcmVw
bHkgLS0tLS0tLWFuIGVuZ2luZWVyIHdobyBzdWJtaXR0ZWQgdGhlIHBhdGNoIGZvciB0aGUgZmly
c3QKPiB0aW1l44CCCgpQbGVhc2UgZXhwbGFpbiB3aHkgeW91IHdpc2ggdG8gb3B0aW1pc2UgdGhp
cywgYW5kIGhvdyBtdWNoIGVmZmVjdCBpdApoYXMuCgotLSAKUk1LJ3MgUGF0Y2ggc3lzdGVtOiBo
dHRwczovL3d3dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVyL3BhdGNoZXMvCkZUVEMgYnJvYWRi
YW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5bmMgYXQgMTIuMU1icHMgZG93biA2
MjJrYnBzIHVwCkFjY29yZGluZyB0byBzcGVlZHRlc3QubmV0OiAxMS45TWJwcyBkb3duIDUwMGti
cHMgdXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK

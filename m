Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8E435D99
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 15:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnR/UMKCxmRXch8H2yDoPvIjRaRqn/kmeOUnDlPFsBw=; b=fHcCUXHNKE/gvC
	TyK4+Wv++WyOl/bgMgG3jmazb5Tc+oX7pvsTMBZVfnl8FAySSYsf2iw9Ij2Jm5u3gGc5rbI2jD6Mt
	YGZIpyl9JbKEafwkaewFWDfjTsChyPaBdtg96/UML0aRVC+AIvP8cJ0pwfOrTddOL1Dd7ladRdxOJ
	7dkSs6jspdamOH4ponqDsyPiYToJ75almsajvyMe8w/0SHz0nTboYMzWB4SiwQgTq2sU442H9wPoZ
	PpLxeXIh8xUYGmPVRJoDRNQ58JaPhY7xbDHCcDIbswwvLHdePgxLf9NcO4Kf8HzyS3lvv8RvWORpl
	DsuWgPveFcu2hMF7iErw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYViy-0000wu-Nu; Wed, 05 Jun 2019 13:13:04 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYVis-0000wL-0X; Wed, 05 Jun 2019 13:12:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1559740362;
 bh=CsyA08ei/fkFPEU+VZzXBGyaujNAU5Gy3eeVl2SOv88=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=WM1pOGDdgKHjwYyxlipNYIbaCQQ5xTbCWZCxgoWIqcZYbm64B6+KNH/rzHN6GbbcY
 /0ExKmctWc3eClmLB5jdsIo7/uAydaoxAkNx7p/pRjw8IN0mWSnX08BdEiDX21ROHI
 4cbr+XBnZSPzu8DFU50iyy134g8nwkS2pfEOLI2E=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.160]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0LfSyv-1gnq6q3VcX-00p0wD; Wed, 05
 Jun 2019 15:12:41 +0200
Subject: Re: [PATCH 0/4] cpufreq support for the Raspberry Pi
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
References: <20190604173223.4229-1-nsaenzjulienne@suse.de>
 <2ece3f20-ef8c-c39e-941c-76635ddbe185@gmx.net>
 <1a86637dad1d2f33450950143a82016beb91bdb6.camel@suse.de>
 <1c9708c9-a3c9-8a8f-4693-8f29d3e60634@gmx.net>
 <8d6eb920ebcaec2ede413439a7080ae030b7e44e.camel@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <755148da-60f5-2925-b6b3-1ac452e13d9e@gmx.net>
Date: Wed, 5 Jun 2019 15:12:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <8d6eb920ebcaec2ede413439a7080ae030b7e44e.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:T2nRa6wC5hotv0MUYJECymggpzwZZkIP8CPzeYgz+zuUDoRadhn
 e/xr55USxwJa/QCDfYDHD9QP0j5JnINKIzfgCakveqoO2DKlJ4XFLR2AjJnD+0fJUpdK7sl
 XN6RnM+AKMlQqvqZV4sSPKB2yLdldF2uN0EEw039KFt8pVb3BrJSB7WmYhjeqw1EXcdRPfX
 7Yx2jOQ+/wTUd9pzxjR1g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:C+5z9L5eeVA=:PWHJAJrDPJ+7s+qj4HLNvg
 ut19EjEacdchwt67zVwnnPj87yAgk259phrB8MrOsEXEN3pEv7GCtMPfftUmUvu3I6rhW0MD/
 ikmpbWLyr0UMbrtl4tnGfOGqkel0tciLSwoNPfZvEjJ5F10fiHCfgraCG0bvDpYegudUByfh1
 1Z5p2cg1WKQQ2aji1T6uZBbS7PcauPkA6n5r1xOoGYcSxVckM7A5NQi4koi1l2EvyjjTwkTX1
 KXj9I00PaYFDuiBBvlv3+hviqUNHdA1qpqimcSODtpK3ybQm7yGhQ7o8sdE74ckCuBX2Lsahx
 dFfLBFVrgy/wfCZMozE2AuFPuUDZ13/26ShDYSTT/PY6s28L7qdFej6gMs4P0GqKKo3bhRRrD
 M1pVqxD2S61v44gWdasb4GsoF3c9z1AEpM7WVv3wVw1a85LxpuUrB3jn09AKewmGgrVIHfOxs
 ap0nG1pKEXUDd4V1YMktqWyZ0pEIFT9tCCPJBBspoMsIVwkeuTFmJbcI7UzV7ZXnr+5I9cUla
 n5VkVOygZR1oxuVv8y7Yt1WVE3KALOqLl+zLAT8ta2qaiiINBlCX0t29hJkMtRtH8e5DZ0obV
 ZZETEBpL/qkkwmDe3XvNTOWXEdT43gUkSPa6j7yFW3pbmx6uoARXGvtGQXq0uHTX0BknIx8zJ
 mFbtHsbwTP/YnRSi/14RvBj73wUqRl3inY7+fs1K959A5pvmOw2+zEokSQg8f+erT7P8b0+m5
 heShF8P/T3GLkOrWAQqQCqCv67srOHgqaa54sqr26Btjl7ohsDMWKsq3x2s2xlonVlhyQqHPb
 8iUhigE6zx8IwafY8MQYWOBeQzYr+vUbr6caawMAMvlJBiGna1LKffzb3h+u8Vm+w62rrx6MA
 l/tVQcOMkgXJCDwb3b6v8rzHRM9wkaKkMk40cSIFeLHcwD6GZVuOw/cYQG4kJ84rxuD0dMKRt
 0htCukKkImfDp3aWdR2LsamZmUouaahHenfmKsFFgUYAGJUVqn+nM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_061258_387329_40D4BDB0 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: f.fainelli@gmail.com, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDUuMDYuMTkgdW0gMTQ6Mjcgc2NocmllYiBOaWNvbGFzIFNhZW56IEp1bGllbm5lOgo+IE9r
LCB0aGlzIGxvb2tzIG1vcmUgbW9yZSBsaWtlIG15IGZhdWx0LCBwcm9iYWJseSBhbiBvdmVyZmxv
dyBlcnJvciBzb21ld2hlcmUuIEkKPiBzYXcgc29tZXRoaW5nIHNpbWlsYXIgd2hpbGUgdGVzdGlu
ZyBpdCBvbiBSUEkyYi4gV2hpY2ggYm9hcmQgJiBjb25maWcgd2FzIHRoaXMKPiBydW4gd2l0aD8K
SXQncyBhbiBSUGkgM0IrIHdpdGggbXVsdGlfdjdfZGVmY29uZmlnCj4gQ291bGQgeW91IGNvbmZp
cm0gdGhlIGNsay1yYXNwYmVycnlwaS5jIG1lc3NhZ2UgdmVyaWZ5aW5nIHRoZSBtYXggYW5kCj4g
bWluIGZyZXF1ZW5jaWVzIHNob3dlZCB1cCBhbmQgd2FzIGNvcnJlY3QuClvCoMKgwqAgNC4yNTMy
OTRdIHJhc3BiZXJyeXBpLWZpcm13YXJlIHNvYzpmaXJtd2FyZTogQXR0YWNoZWQgdG8gZmlybXdh
cmUKZnJvbSAyMDE5LTAzLTI3IDE1OjQ1ClvCoMKgwqAgNC4yNjk3MjddIG1tY2JsazA6IG1tYzA6
MDAwNyBTRENJVCAxNC42IEdpQgpbwqDCoMKgIDQuMjgyNDY0XSByYXNwYmVycnlwaS1jbGsgcmFz
cGJlcnJ5cGktY2xrOiBDUFUgZnJlcXVlbmN5IHJhbmdlOiBtaW4KNjAwMDAwMDAwLCBtYXggMTQw
MDAwMDAwMAo+Cj4gUmVnYXJkcywKPiBOaWNvbGFzCj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

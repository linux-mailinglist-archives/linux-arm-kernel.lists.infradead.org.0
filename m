Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD96165A54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 10:40:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sSh45LyRB7VozmKvlk9k7u3jcjf2s3TRAwXIU7+HaH8=; b=nnrAMNzL9ubTD8w8Dega2pS4S
	4IQ8NjFwzE3OrK0kRAACIfByFA+pi1854kj1OPex6qdZ1G70chp+kRSjWKlGHrM4BchyKaCRNm+6t
	Oi4TxJpSkKiFBuM4ZE6HTKvKB2R0mP13T4lhbA+MRAMunF+khmNKtE0NTdL5pRcPohFqkYAEVJCGX
	DsG83yPBpp0cGvULlUK4o9s85IMKl763UihgKODMeTlqyu62eTVtBvtc0wLQHztGje1SUSatabWR7
	XuhTh/msR48Jlh/Ly2zc45io/K+3fZ0CDQaU+Ff+rETm71+b2qPJifysmeHTzuJBMd7LMtcqUml/r
	KAMX5gnBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4iJa-0001gL-Ns; Thu, 20 Feb 2020 09:40:14 +0000
Received: from smtpng3.m.smailru.net ([94.100.177.149])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iJI-0001fa-JE; Thu, 20 Feb 2020 09:39:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=orpaltech.com; s=mailru; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=OES7JJvnqepbXgyoMgEAG1SAAmY/kMnmMbHdJqc5z9M=; 
 b=hl8jSZ+MrjrP7c0kUjByh4tDjrlTP6Emf6tG+SASLTehOueGYwPuCBQjWrAVLY2IDea4mFyAzbU7sj9EvZ09LsVrzLJ/2qCg80KlD/oNgZsR+DHM8AEyBBjb8CnhTrbv1JZAX2453MqvmJ7dQ/SpsbJ0KCRSnlQRNNcE4VApQVA=;
Received: by smtpng3.m.smailru.net with esmtpa (envelope-from
 <ssuloev@orpaltech.com>)
 id 1j4iJF-0000Y6-3z; Thu, 20 Feb 2020 12:39:53 +0300
Subject: Re: vc4 on rpi3 A+
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
References: <8b353626-f62a-2aff-96b4-91712ed36095@orpaltech.com>
 <4850fa1006d5a329c2e6d4e61ec6fb9420125414.camel@suse.de>
From: Sergey Suloev <ssuloev@orpaltech.com>
Message-ID: <4a952494-ba96-289d-cc14-06710912b53b@orpaltech.com>
Date: Thu, 20 Feb 2020 12:39:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <4850fa1006d5a329c2e6d4e61ec6fb9420125414.camel@suse.de>
Content-Language: en-US
Authentication-Results: smtpng3.m.smailru.net;
 auth=pass smtp.auth=ssuloev@orpaltech.com
 smtp.mailfrom=ssuloev@orpaltech.com
X-7564579A: 646B95376F6C166E
X-77F55803: 0A44E481635329DB0E1AA8A03B392317D32E5E4886521736714D0EA31FF800925E83A0BB7DE7076BF688BCB05C26794D2348F7A7273D6CFEF5D917ECAE3295864D64855D34DF09DAF89A037ECDBE229E
X-7FA49CB5: 0D63561A33F958A553E4AB105E070E69CAB8E048BCD64ED293B7E9EBEF9456648941B15DA834481FA18204E546F3947C2FFDA4F57982C5F4F6B57BC7E64490618DEB871D839B7333395957E7521B51C2545D4CF71C94A83E9FA2833FD35BB23D27C277FBC8AE2E8BF1175FABE1C0F9B6A471835C12D1D977C4224003CC836476C0CAF46E325F83A522CA9DD8327EE4930A3850AC1BE2E735B58781B77DE60D36C4224003CC836476C0CAF46E325F83A50BF2EBBBDD9D6B0F05F538519369F3743B503F486389A921A5CC5B56E945C8DA
X-D57D3AED: Y8kq8+OzVoxvgW9Op3aR8Fxwo7H2ZNxGP5qz8aO2mjTJzjHGC4ogvVuzB3zfVUBtENeZ6b5av1fnCBE34JUDkaJinJwwHx5ysVv9/YfT9uf4zO+KPnsJxQ==
X-Mailru-Sender: 689FA8AB762F73930799C7A3FA23A27097B8E314F6257074E2A9538A8FDA340A778B5FB1219D8779F6BCD4B1DE95BF653AE5922765F965CDF1D7D1B96E5495AE10FCEA6DFE3E0A150D4ABDE8C577C2ED
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_013956_825694_70881F15 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.100.177.149 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ni, Nicolas,

On 2/20/20 12:25 PM, Nicolas Saenz Julienne wrote:
> Hi Sergey,
>
> On Thu, 2020-02-20 at 11:21 +0300, Sergey Suloev wrote:
>> Hello, guys,
>>
>> could anyone clarify the status of vc4 drm support on RPI 3A+ ?
> I don't have one so I can't really tell for that specific board, but I'm going
> to try to reproduce it on a rpi3b.
>
>> I tried to build kernel 5.5 and 5.6-rc2 in 32bit and aarch64
>> configurations with VC4 turned ON but both unsuccessful - vc4 drm driver
>> is listed in memory but not working and not producing any typical DRM
>> log output.
> AFAIK there is a known issue in 5.6-rc2, which has already been addressed[1].
> Note that the driver fails on probe so there is some amount of DRM output.
>
> I tried to reproduce your issue with v5.5, but vc4 seems to probe alright
> (rpi3b+aarch64+defconfig):
>
> 	[   15.443047] vc4_hdmi 3f902000.hdmi: vc4-hdmi-hifi <-> 3f902000.hdmi mapping ok
> 	[   15.452864] vc4_hdmi 3f902000.hdmi: ASoC: no DMI vendor name!
> 	[   15.459836] vc4-drm soc:gpu: bound 3f902000.hdmi (ops vc4_hdmi_ops [vc4])
> 	[   15.467062] vc4-drm soc:gpu: bound 3f806000.vec (ops vc4_vec_ops [vc4])
> 	[   15.478722] vc4-drm soc:gpu: bound 3f004000.txp (ops vc4_txp_ops [vc4])
> 	[   15.485749] vc4-drm soc:gpu: bound 3f400000.hvs (ops vc4_hvs_ops [vc4])
> 	[   15.499009] vc4-drm soc:gpu: bound 3f206000.pixelvalve (ops vc4_crtc_ops [vc4])
> 	[   15.526217] vc4-drm soc:gpu: bound 3f207000.pixelvalve (ops vc4_crtc_ops [vc4])
> 	[   15.542257] vc4-drm soc:gpu: bound 3f807000.pixelvalve (ops vc4_crtc_ops [vc4])
> 	[   15.560113] vc4-drm soc:gpu: bound 3fc00000.v3d (ops vc4_v3d_ops [vc4])
> 	[   15.574684] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
> 	[   15.587375] [drm] Driver supports precise vblank timestamp query.
> 	[   15.606831] [drm] Initialized vc4 0.0.0 20140616 for soc:gpu on minor 0
> 	[   15.617505] Console: switching to colour frame buffer device 90x30
> 	[   15.627858] vc4-drm soc:gpu: fb0: vc4drmfb frame buffer device
>
> Could it be that you forgot to update the device tree or kernel modules?
>
> Regards,
> Nicolas
>
> [1] https://lkml.kernel.org/lkml/20200219102526.692126-1-jbrunet@baylibre.com/T/
>

thanks for reply.

It works fine with Rpi3B, I agree with you. The issue happens with RPi 
3A+ only.


Thank you


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

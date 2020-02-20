Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D0C165A80
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 10:53:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ceztl/Jp+5eASEZTsu9o2IB3z0Dr5NFrfBTeE6l5WBY=; b=fRzuLqjqKwB+dqYqQWKOZKj37
	PkHRezQOisyjFimYPoiahli9DM8s89QAl/1B0ZdVIFonhxSrYc4rBemaULHSIGKF3KFT2Rt6plvWE
	CEiG1p9P4E2lHHGRQ01fj+WDmCHi6BMTpGCGJ6g9QscRlYIX+oVrJrMOfZesKuTOA8RRpNiQHtO14
	+e+fCe4sDCguMEQ/fvHqsRQHp/3/jCmZGJF5Rp2PmU2YB288prI3ScaN+2+Q5ac8qdRddswwWu3B0
	gaXGijb0iq8iSJWT+T/eH7Vmgif0GeR4KWf+0uz0dtK9sEmhl4/zJDS/CvbKYUKTxPhImeO1BSL9l
	koDteVEkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4iVu-0006lN-SW; Thu, 20 Feb 2020 09:52:58 +0000
Received: from smtpng1.m.smailru.net ([94.100.181.251])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iVi-0006ko-TS; Thu, 20 Feb 2020 09:52:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=orpaltech.com; s=mailru; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=thCv06GhN62SfH95yKiOQdnlyErpdK43iNvF6bo7UC8=; 
 b=HpMH2AIGBg7VHZ4y+eFihTTaOlK14DrAREoekeHy0rsHBnH6UVKNZq8CXCPb5XqSu0puMGqwD9/JOQMiSTUSJlsiADSvy7/o/EZ7Y8zcSdGJnYLGSnKIF0BrtoGWSh6lcbSeoL0Z0nTYSmD52Xzj7ZO9Mxx4GnbpM/7cnAwmaeg=;
Received: by smtpng1.m.smailru.net with esmtpa (envelope-from
 <ssuloev@orpaltech.com>)
 id 1j4iVe-0004m5-Vl; Thu, 20 Feb 2020 12:52:43 +0300
Subject: Re: vc4 on rpi3 A+
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
References: <8b353626-f62a-2aff-96b4-91712ed36095@orpaltech.com>
 <4850fa1006d5a329c2e6d4e61ec6fb9420125414.camel@suse.de>
From: Sergey Suloev <ssuloev@orpaltech.com>
Message-ID: <0dab6579-78db-4537-619f-449f910116c2@orpaltech.com>
Date: Thu, 20 Feb 2020 12:52:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <4850fa1006d5a329c2e6d4e61ec6fb9420125414.camel@suse.de>
Content-Language: en-US
Authentication-Results: smtpng1.m.smailru.net;
 auth=pass smtp.auth=ssuloev@orpaltech.com
 smtp.mailfrom=ssuloev@orpaltech.com
X-7564579A: 646B95376F6C166E
X-77F55803: 0A44E481635329DB0E1AA8A03B392317D32E5E4886521736714D0EA31FF800922AC705C7BA8F5525F688BCB05C26794D2348F7A7273D6CFE207E81FDC8985EC7768F72F97BC0F708713C65106E7FA372
X-7FA49CB5: 0D63561A33F958A56B272A5C5DEA2C3B0A9E75FA917AEDCBAD54F7FD1D0EFB2C8941B15DA834481FA18204E546F3947CEDCF5861DED71B2F389733CBF5DBD5E9C8A9BA7A39EFB7666BA297DBC24807EA117882F44604297287769387670735209ECD01F8117BC8BEA471835C12D1D977C4224003CC836476C0CAF46E325F83A522CA9DD8327EE4930A3850AC1BE2E7352629B07FD02F83A6C4224003CC836476C0CAF46E325F83A50BF2EBBBDD9D6B0F05F538519369F3743B503F486389A921A5CC5B56E945C8DA
X-D57D3AED: Y8kq8+OzVoxvgW9Op3aR8Fxwo7H2ZNxGP5qz8aO2mjTJzjHGC4ogvVuzB3zfVUBtENeZ6b5av1fnCBE34JUDkaJinJwwHx5ysVv9/YfT9ufdCMnJxRF9AA==
X-Mailru-Sender: 689FA8AB762F73930799C7A3FA23A2707E5128F47E140C3F5E4AC6F48EA1EBC0778B5FB1219D8779F6BCD4B1DE95BF653AE5922765F965CDF1D7D1B96E5495AE10FCEA6DFE3E0A150D4ABDE8C577C2ED
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_015247_136924_C8CC47DB 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.100.181.251 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Nicolas,

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

the patch [1] has already been included into 5.6-rc2, so the issue with 
Rpi 3A+ isn't related to that.

[1] 
https://lkml.kernel.org/lkml/20200219102526.692126-1-jbrunet@baylibre.com/T/


Thank you


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

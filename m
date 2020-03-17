Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CE0188D17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 19:26:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+nRewA+xiWnAuhF1l2grIDpdaSnL7lBTdMcImoelmF4=; b=V3OT2WTAcX7MRHwQ8FNMyTMKS
	1SFrwWlw1lF2NTj4TnvNb9wB3VWqEJHJiyTxv/kk4JQp3gITgS0FcqpPzeAsdsbCCcNJZ7W/eUFxX
	ehdwAb/RsaI6ZpFW4qkeGkWvLIVp79lxwxo9tspKCl0zxGZLq1i14HG5KE95KzHtXHyvRwz/l3p1G
	ZfZpzUIYG/6onEWecgEhcXIJ/Oqrny6v9viYhEwDrRoGZL2fwF1itTQGMO02wIybr5C9lwXnTzjvQ
	n0GRms3ZrmtoB8chJuLWCwVGFbAo91ptUEVVScNZoIUCW/XnT5kPsRkP4EeDACNZl1sIzfsuzNfhx
	IGhcBlOFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEGuW-0005ec-0A; Tue, 17 Mar 2020 18:25:52 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEGuK-0005eF-8r; Tue, 17 Mar 2020 18:25:41 +0000
Received: by mail-qv1-xf44.google.com with SMTP id cy12so5527001qvb.7;
 Tue, 17 Mar 2020 11:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:cc:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+AAQtfeIKBe0J7G95dlHW6pF6+WjC1g407eOME3dVmQ=;
 b=Mf1Rjvoj1Hz4uD1TS8jI5XGcSfMC0Sb41aJWgC7Hdp1LTHxwnJwMhRaIKMbTF2Z8SK
 TZf5jcidxHYMwYfVVbHhWxmkNJkSLXpYPXQDdKaMT23GgPWgwIi6xoBgddC06mi0ox72
 W8LcTn5aLUqp6YmsWCtORXmjFOP4IgHs+8mzCS7w2fmLYNGQCQrgbipqbkTI1GA9Yca5
 m8R769UcY/PZDbdM9P7RM/B/n72F0MrEgM4jyl2WoSDLaAqHZzLNZAtLftQMq1ZNLtZn
 fCmda3y9u7PlpsXz/T8EsHlveXypVhtXkeda95FZkFeBLVOfujT1yQ655aqdoe0xnnl/
 cxOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+AAQtfeIKBe0J7G95dlHW6pF6+WjC1g407eOME3dVmQ=;
 b=BQEw+alJQUDCAwK8OsdSz9ECnmFwjRSa3+5hLAke14XB/14JDQhDmgb2VI5sriMtj5
 /fdi9okDSLSd3wJFbwd0wDg5Nb8F1eFcyrIN4ipZa3AWj3mVFsWj1DA4b2VKuE4mNyVF
 Lh25JWKfj6EzawNFGi7ojbwum6tDcTSGVDfsmrqOpjclrnOf+zS6qbWG/CIpxRQ6sg9K
 Rdd1PZzr0TxMmjL/9gwxvN9fDY5kh/vK6+4zdVLhG/Xt+IwlcW/IhVUkrPy7RdjzaaFb
 1Ye8DL7GpWijEEWBXcfcYTqJCEssyOVkf6GwlJZq29glPESi1pSesbzSPOVPpdvsI/o3
 iLYQ==
X-Gm-Message-State: ANhLgQ2BD7FWPiXAEdNJsMT/4gbrJyVQisFdovNX2rnxwNhwytd0O/Z+
 OLqLOWv+lplqPl+jcTlVApE=
X-Google-Smtp-Source: ADFU+vuU60GOS1xr2J0Mk1zFtlfxGhEDCOoNN64m+qEW9JiEemWjJy7kaMnD+fNXCIW9DoS4Gu/bAA==
X-Received: by 2002:a0c:f786:: with SMTP id s6mr479455qvn.224.1584469538665;
 Tue, 17 Mar 2020 11:25:38 -0700 (PDT)
Received: from [172.16.13.2] ([68.202.211.176])
 by smtp.gmail.com with ESMTPSA id f13sm2449947qka.83.2020.03.17.11.25.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Mar 2020 11:25:38 -0700 (PDT)
Subject: Re: [PATCH 87/89] drm/vc4: hdmi: Support the BCM2711 HDMI controllers
To: dri-devel@lists.freedesktop.org, maxime@cerno.tech
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <35ec1082e5597a1c6d48d2ebfa0964a7ae1e335c.1582533919.git-series.maxime@cerno.tech>
From: Daniel Rodriguez <danielcrodriguez2012@gmail.com>
Message-ID: <a70fc5c5-b4a9-5f91-ceb3-f6cbdca417b1@gmail.com>
Date: Tue, 17 Mar 2020 14:25:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <35ec1082e5597a1c6d48d2ebfa0964a7ae1e335c.1582533919.git-series.maxime@cerno.tech>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_112540_337643_374E6390 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [danielcrodriguez2012[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [danielcrodriguez2012[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tim.gover@raspberrypi.com, dave.stevenson@raspberrypi.com,
 nsaenzjulienne@suse.de, linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 phil@raspberrypi.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/24/20 4:07 AM, Maxime Ripard wrote:

>   static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
>   {
>   	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
> @@ -1314,6 +1438,92 @@ static int vc4_hdmi_init_resources(struct vc4_hdmi *vc4_hdmi)
>   	return 0;
>   }
>   
This function fails on my Raspberry Pi 4 running patched 5.6-rc6. The 
errors printed to syslog are as follows:

[   15.167559] vc4-drm gpu: [drm] *ERROR* fbdev: Failed to setup generic 
emulation (ret=-22)

[   46.116273] WARNING: CPU: 2 PID: 1057 at 
drivers/gpu/drm/vc4/vc4_hdmi_phy.c:414 vc5_hdmi_phy_init+0x7b4/0x2078 [vc4]


[   47.127798] Timeout waiting for VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE

[   47.127865] WARNING: CPU: 1 PID: 1057 at 
drivers/gpu/drm/vc4/vc4_hdmi.c:652 vc4_hdmi_encoder_enable+0x1518/0x1e10 
[vc4]

[   47.128353] WARNING: CPU: 1 PID: 1057 at 
drivers/gpu/drm/vc4/vc4_hdmi.c:671 vc4_hdmi_encoder_enable+0x18c8/0x1e10 
[vc4]


-----------------------------------------------------------------

Backtrace:

[   46.116373] pc : vc5_hdmi_phy_init+0x7b4/0x2078 [vc4]

[   46.116386] lr : vc4_hdmi_encoder_enable+0x1cc/0x1e10 [vc4]

[   46.116440]  vc5_hdmi_phy_init+0x7b4/0x2078 [vc4]

[   46.116451]  vc4_hdmi_encoder_enable+0x1cc/0x1e10 [vc4]

[   46.116497]  vc4_atomic_complete_commit+0x3f0/0x530 [vc4]

[   46.116508]  vc4_atomic_commit+0x1d8/0x1f8 [vc4]

The specific offending conditional (before the warning on line 652) 
under vc4_hdmi_encoder_enable() in drm/vc4/vc4_hdmi.c:

645  if (vc4_encoder->hdmi_monitor) {

646          HDMI_WRITE(HDMI_SCHEDULER_CONTROL,

647                     HDMI_READ(HDMI_SCHEDULER_CONTROL) |

648                     VC4_HDMI_SCHEDULER_CONTROL_MODE_HDMI);


649
650          ret = wait_for(HDMI_READ(HDMI_SCHEDULER_CONTROL) &

651                     VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE, 1000);

652          WARN_ONCE(ret, "Timeout waiting for "

653                 "VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE\n");

Which causes vc4_hdmi_encoder_enable() to fail.

The failure of vc5_hdmi_phy_init() earlier left the phy inactive, 
causing the encoder enabling function above to fail.

The offending code around line 414 in vc4_hdmi_phy.c, under 
vc5_hdmi_phy_init() reads

411     HDMI_WRITE(HDMI_TX_PHY_TMDS_CLK_WORD_SEL, word_sel);


412
413     HDMI_WRITE(HDMI_TX_PHY_CTL_3,

414                VC4_SET_FIELD(phy_get_cp_current(vco_freq),

415                              VC4_HDMI_TX_PHY_CTL_3_ICP) |

416                VC4_SET_FIELD(1, VC4_HDMI_TX_PHY_CTL_3_CP) |

417                VC4_SET_FIELD(1, VC4_HDMI_TX_PHY_CTL_3_CP1) |

418                VC4_SET_FIELD(3, VC4_HDMI_TX_PHY_CTL_3_CZ) |

419                VC4_SET_FIELD(4, VC4_HDMI_TX_PHY_CTL_3_RP) |

420                VC4_SET_FIELD(6, VC4_HDMI_TX_PHY_CTL_3_RZ));



As the hdmi-related timeout occurs 30 seconds after the drm failure, I'm 
bound to believe that the timeout occurs due to the drm setup failure 
leaving nothing for the phy functions to act on.

Earlier in the syslog an error potentially related to the 
VC4_SET_FIELD(phy_get_cp_current(vco_freq) failure:

[    3.729745] raspberrypi-clk raspberrypi-clk: Missing firmware node

[    3.743915] raspberrypi-clk: probe of raspberrypi-clk failed with 
error -2


I thought the patch series added the firmware node? Perhaps the bcm2835 
clock stub in the bcm2835 common dts is not being imported in the 
bcm2711 devicetree?

The result is a connected hdmi monitor has signal from the simple 
framebuffer until the failed modeswitch, upon which it loses signal.

I'm looking around for these possibilities in the kernel tree, though I 
thought the code worked as it was?

I did have to disable CONFIG_DRM_VC4_HDMI_CEC in Kconfig to get the 
patches to compile as another user in linux-arm-kernel discovered the 
CEC code relied on removed functions (Jian-Hong Pan).

I still hope these patches can be cleaned up/fixed to make the 5.7 merge 
window.

Daniel Rodriguez

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

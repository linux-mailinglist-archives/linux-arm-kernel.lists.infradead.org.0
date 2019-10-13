Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D815DD5789
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 21:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkA8EMLcIr1oe7lt3W2lAzw5SqZwnnM+TVM44Byw7ms=; b=NcPKnIX1Fi5IU6
	JKZyc/zZdRwWqkeVx+bb96jKqAPqOVK+o70Cr/ddMSAvX0W+pLOPMXG+K17TM3GMNEXqtGesKytGm
	5uXuQ/E5LGL4TE3mSVuVIpK9HIlBCasXyRrIhF59etrZJMEJAdBhYfrDoY0yj2HTtDzYqj/pwwrsv
	/c5DHbAw1w6Pz+s90WxGW2RJGNPI1kJ+VJm7irgRiqwTNqbfiw1pOSWe97FtMFhGu4aqxxPTrtWQr
	8JZsx/O4K6ahRO0m7u6g32tl2cuQFEa69UrpVH5lW8GiPdLFcaOpHarNaEo3UpbxoH7aRrwJj2IDU
	lnO1vMPBbw1Iy1W5ZzsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJjBX-0002ed-Fy; Sun, 13 Oct 2019 19:05:43 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJjBP-0002eC-Mr; Sun, 13 Oct 2019 19:05:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570993519;
 bh=MO2oXO2i14ZtdkD68DinZld5+bL5TDWxW+IcfydEnZw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=MLOsUSl9T1lMIAx8wmXUqYPhvsXiDwTz6Q5D9vS8SNyxDDdS4kjIcXveTilsEyxiY
 7zUtaayxutyBkCl/2ZGpM9cWIpXs2gUL8eSmjG6uIy/wUp0lKmW2mfca1XBSHbDQh8
 1230FRXqeUjyPwdTFdik4qQqF/SUfof3S6cDUjO4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MC34h-1iDvD13FbJ-00CSTA; Sun, 13
 Oct 2019 21:05:18 +0200
Subject: Re: [PATCH 1/2] staging: vc04_services: fix lines ending with open
 parenthesis
To: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com
References: <20191013183420.13785-1-jbi.octave@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <38a29280-820a-4752-d9b5-099647a159d5@gmx.net>
Date: Sun, 13 Oct 2019 21:05:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191013183420.13785-1-jbi.octave@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:oekdBUYy9JblNZTDryIiY4k9qbz96nELqU0fWbvsIAKMlCfzSoO
 Vf1SxQieI0o6MpseCrTMCUJ9EvaghlmGvBoja6Sy7Z+NTkyGr0M0dVgmX254tZT7biRfCwo
 VedSrf7vvnIthR9JJGwTLYI2PsKDDJNiEfre6Chjt+7rPNtk51CVzM77JHxMmwKTPYlEUCo
 LyzgI/01Ldt4GUrV743xw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iTrNcnt6GRk=:yt2+kE4Wg4RaXVE162SAQB
 H2murMDCUcNTzaI59qGJ1/Vpji1CqO/v9JWjPwlgu7yvXC/9JutFMl6AL6RNxdL6e2VB0dNCK
 1UwNz8Z2Y7uN3P6MwA2r9A04ETOv4BhbwyXKxzHsJO9S6PKCbpPPkvrzFwWe5jNtIKvHuppUY
 Uag4xEEH84p6G9tM+nDfyWvanXDCob8xhYdY4TC0D0tIRXd+i3mvr1ILdpDwdMxLXqXj/drsm
 tV18jtDPHPeyY6GcoVRbMj0n2ZFeFO9J7+WPM3AiL9+6r/73BrLjLOGVfiIpQTJlhgJYAl2QQ
 T1dnjh9UdeFB/uU/U21CDk52Nt4bfp48tg/SVpFLYsWyKPw2oTPSTWrMDXLnDd6oue0vNiwbY
 1LI4iK+WH33QuyI94V/LJO4kIRmvzUTCBoMfTB7wltzFC1mlHj2zcph57VCCrtwrvHGZM+hbx
 DpemID0udkYnEqloS2TSio7LsYzxHOIvqsRgKkPntSbdl/iF0TCOpSztqoOc2EW8krThHUnVK
 UhpLaxgfZ96GLuWI8qyJN5jjc4fgYzGVb8cFDHdeCukk1RUumkjEUPdZrjXVFO/RTVKgMK+Li
 y2V6PPm3TKoR3LfawkhbxuS2XGegEPm0Y8GhKCqlHhy3/0VobBsKrV7xM5u74WT/QKfcxeGVl
 4URKZSU/xrARZKBR704DcOmhlmTpAj7hdmTXUgT8yLcAn4mLhw7g7HOnYhzUWKlhdIG+/LS71
 0CWklXup3yDQ9Lv1lsEZe4D/ECMb+SXXtRizoaV592oKnDwp4LFojXidgkEwnnZsEm2vrsnFG
 bzQh/byujnu9WRV1GIwM9vT9gfcoszyoX5DYxQY9q7Bs//P+50g4GTKsV4ONTEZDTltkE27YC
 v7cwmqKN97GseKDdyf9W8+Duq10qHiBwW1yQOQ9VHdLr5N7M3fheu5lR+alWj0rONwPGmPa33
 vCkBPaIxFc1GMzYsGAZ/IKBDlw895RgipElImQBHXcnYopYsGNrhvc4jpX293I8U994RpIaA3
 sq7DErYrXFCYlYkJvOoA/Gs7vWZsjHdSEDV9m4UbWHJXhSt5tY6bUjZFf9C7DerIgntavMAYJ
 1zBnLusnTrDa75IcfcfkUeYBiK1Eocq+/M8kl/xgaW7rkKr0A1iyOi2LYQByiOqlYYUZqPOm9
 5KXi8ycPBVvZV83k0Vyg4/Y9f3LraVr+3oN85zwyu09tp5RbrAm31DnGAEPhSPLdGlc5mxhF2
 4Xv373gNP/RNnp6SdNL1I3/T6KeOHeVRvWW8eLTpcrkl4xUmaieDHEBxNM8k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_120536_038552_C1C6C5E3 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 mchehab+samsung@kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, eric@anholt.net, daniela.mormocea@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 dave.stevenson@raspberrypi.org, rjui@broadcom.com, hverkuil-cisco@xs4all.nl,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jules,

Am 13.10.19 um 20:34 schrieb Jules Irenge:
> Fix lines ending with open parenthesis. Issue detected by checkpatch tool.
> In the process, change driver functions name in the multiple files from:
> vchiq_mmal_port_parameter_set to vmp_prmtr_set
> vchiq_mmal_component_disable to vm_cmpnt_disable
> vchiq_mmal_port_connect_tunnel to vmp_cnnct_tunnel
> vchiq_mmal_component_enable to vm_cmpnt_enable

please no. Changing random function names into something unreadable
doesn't increase code readability. We need to keep an eye on the whole
interface. Maybe you better start with the 2nd part of Joe's suggestion
first.

Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B769D202CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ip9Lh4nuUju05npfwHFRMv/B7EkmMSZgoWh93tG6Pac=; b=C4TZxCGGp6Ogjd
	TeRHW3oE/1SdRtKOvhq+zHVCtGlqeJoHtWW36C6LfDofWwafg8qL50c4QjH//3dAGaPA+TQ9mfpQx
	kf1PYf/KTbA7XcdZUr+z4oph7ZD/PCCBnZVl3w/uBP+k5VynGu0btoXrKWaSVE+auntg4dR8skaKo
	e/5YTxf2kkdN2yfwkynwubBHeebXSnfZUFlleT3lZ2qyxEVOsexrBpUHb8jIKHBcpUBXHut5e6Ay1
	LopGB862D9r591kqxsth39Jm7rGi4imX/azNtN+MJoEBeApKff1qtS+mLKPEr9K/nort5sgkuxG9r
	HmKJZgAflg4U+w8taghQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCxl-0001i0-0G; Thu, 16 May 2019 09:46:09 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCxd-0001hM-51
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:46:02 +0000
Received: by mail-wr1-x42a.google.com with SMTP id e15so2616610wrs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 02:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=aZ9bkwLjwgYofHPQHgcBu3CBvGQFImDSbHO1WQz0mYY=;
 b=rZfWrTkTck+lVapdMq7o6+lJhC3egiRrRwDcUJXql8roZ8bvlWlZ7OqDie4Xdv/FLt
 4Nf8iXWXd0ommmp1X6jmrgCNn9lJypjE/w4Wj4HYn2qO8TCdUWfpCjrDGjHqd3QEFKS3
 u9YhHrSsGbaHX9LzN+GHL+9hAARLNvw6357jpwPqiz1JeI5v5sWFmV5ebT25B0Aem+W9
 l8BHRwPDDYHZq+0DWgqwnUH9O/JiLlV97lCYxhvow/D27s6Wlyv8ZckIqmcwrRtGzym9
 tnEYkB63UrwTZZjJDqmo/sPBgP9i3zCZMEg3yG+IViiohgOM7HWyXuDMt6tvnzDG530d
 7jeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=aZ9bkwLjwgYofHPQHgcBu3CBvGQFImDSbHO1WQz0mYY=;
 b=qmSDBlXq5ZSRo0v/IWT4lTwvKCkKDp3QhA5esqSxmTSL3sEu3rGqMap+xZWZ2s7lR8
 NxDcdqZr9lHawuxMWZFl0CtSrz9bNVunS57E4qM6x+Ai4GWIbS0YUdMu8Yi9DWZqKqLE
 THl3g2Vdq8taUgzIlXmQqmK92P9lLIJ3Tdj7ChVSvLqDjhg1/RYwRJLNDyczqn/K9REI
 Km86st6RujEPrnCUWOE6D2l318lU8ReceijlbvSUzBiZZk655iTZjFayRdYcW1ZRY3Ga
 Lg5Zb2WF7PVIkIqob1ws8jRFf8Ihv+8Z1HA4ujz48cmAPPoAK9AsKHweP1E3bceTBygD
 /XvQ==
X-Gm-Message-State: APjAAAX+3sY77yHbL1QvfuO6tZgjevljieR0JKyFdWiaorFbzKzXiSr5
 GOnjm1BQS0n6GsMZ0cFWb+s=
X-Google-Smtp-Source: APXvYqwFV+ytb+BzHJu+Jch7u4hZGa/rsqwHurysMjlxlhg3WyCIcfxA8PA2aGgS9XInLLu1U4/xhw==
X-Received: by 2002:a5d:5506:: with SMTP id b6mr27614793wrv.221.1557999957592; 
 Thu, 16 May 2019 02:45:57 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id i17sm5175786wrr.46.2019.05.16.02.45.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 02:45:56 -0700 (PDT)
Date: Thu, 16 May 2019 11:45:54 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: maxime.ripard@bootlin.com, airlied@linux.ie, daniel@ffwll.ch, wens@csie.org
Subject: drm: sun4i: segmentation fault with rmmod sun4i_drm
Message-ID: <20190516094554.GA7178@Red>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_024601_220664_6BADCEB3 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

When I rmmod sun4i_drm I got
[  546.417886] Internal error: Oops: 17 [#1] SMP ARM
[  547.024731] CPU: 0 PID: 18811 Comm: rmmod Not tainted 5.1.0-next-20190515-00100-gf33d93f7d2a0 #39
[  547.033588] Hardware name: Allwinner sun7i (A20) Family
[  547.038816] PC is at drm_connector_cleanup+0x48/0x210
[  547.043874] LR is at sun4i_hdmi_unbind+0x18/0x5c [sun4i_drm_hdmi]
[  547.049959] pc : [<c08d313c>]    lr : [<bf051344>]    psr: a0000013
[  547.056217] sp : c46e1e90  ip : 00000000  fp : 00000000
[  547.061435] r10: 00000081  r9 : c46e0000  r8 : c0301204
[  547.066653] r7 : 00000000  r6 : c4b918a0  r5 : c4b91840  r4 : 00000000
[  547.073171] r3 : 00000000  r2 : 00000000  r1 : ee900210  r0 : c4b91840
[  547.079691] Flags: NzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
[  547.086817] Control: 10c5387d  Table: 446d406a  DAC: 00000051
[  547.092559] Process rmmod (pid: 18811, stack limit = 0x566ffc72)
[  547.098559] Stack: (0xc46e1e90 to 0xc46e2000)
[  547.102915] 1e80:                                     c4b91840 c4df5d80 00000018 00000000
[  547.111086] 1ea0: c0301204 c46e0000 00000081 bf051344 c4db7200 c4df5d80 00000018 c0974360
[  547.119256] 1ec0: 00000000 21c0d377 c46e1ec8 0000000e c4df5d80 c0974430 c4dc9800 ee900210
[  547.127426] 1ee0: bf02003c 00000081 c0301204 bf01f054 c4df5d80 ee900210 bf02003c c0974680
[  547.135596] 1f00: c4df5d80 c0974728 ee900210 ee900210 bf022104 bf01f014 ee900210 c097c648
[  547.143767] 1f20: ee900210 c1845388 bf022104 c097ae98 ee900210 bf022104 bed8eb98 c097afd4
[  547.151937] 1f40: bf022104 bf022180 bed8eb98 c0979c8c c46e0000 c03d4ea0 346e7573 72645f69
[  547.160107] 1f60: b6fa006d c170ae04 00000017 c031659c b6f048cc c46e1fb0 bed8ee14 000a2060
[  547.168278] 1f80: bed8eb7c c0316a74 ffffffff 21c0d377 00d8ed28 21c0d377 000278d4 346e7573
[  547.176448] 1fa0: 72645f69 c0301000 000278d4 346e7573 bed8eb98 00000880 00000000 bed8ee18
[  547.184618] 1fc0: 000278d4 346e7573 72645f69 00000081 00000000 00000000 b6fa2000 00000000
[  547.192788] 1fe0: bed8eb90 bed8eb80 000277b8 b6ea8420 60000010 bed8eb98 00000000 00000000
[  547.200979] [<c08d313c>] (drm_connector_cleanup) from [<bf051344>] (sun4i_hdmi_unbind+0x18/0x5c [sun4i_drm_hdmi])
[  547.211244] [<bf051344>] (sun4i_hdmi_unbind [sun4i_drm_hdmi]) from [<c0974360>] (component_unbind+0x30/0x68)
[  547.221063] [<c0974360>] (component_unbind) from [<c0974430>] (component_unbind_all+0x98/0xbc)
[  547.229670] [<c0974430>] (component_unbind_all) from [<bf01f054>] (sun4i_drv_unbind+0x38/0x4c [sun4i_drm])
[  547.239317] [<bf01f054>] (sun4i_drv_unbind [sun4i_drm]) from [<c0974680>] (take_down_master.part.0+0x18/0x30)
[  547.249221] [<c0974680>] (take_down_master.part.0) from [<c0974728>] (component_master_del+0x90/0x94)
[  547.258433] [<c0974728>] (component_master_del) from [<bf01f014>] (sun4i_drv_remove+0x14/0x1c [sun4i_drm])
[  547.268080] [<bf01f014>] (sun4i_drv_remove [sun4i_drm]) from [<c097c648>] (platform_drv_remove+0x24/0x3c)
[  547.277641] [<c097c648>] (platform_drv_remove) from [<c097ae98>] (device_release_driver_internal+0xdc/0x1ac)
[  547.287462] [<c097ae98>] (device_release_driver_internal) from [<c097afd4>] (driver_detach+0x54/0xa0)
[  547.296675] [<c097afd4>] (driver_detach) from [<c0979c8c>] (bus_remove_driver+0x4c/0xa0)
[  547.304762] [<c0979c8c>] (bus_remove_driver) from [<c03d4ea0>] (sys_delete_module+0x178/0x1f4)
[  547.313370] [<c03d4ea0>] (sys_delete_module) from [<c0301000>] (ret_fast_syscall+0x0/0x54)
[  547.321622] Exception stack(0xc46e1fa8 to 0xc46e1ff0)
[  547.326671] 1fa0:                   000278d4 346e7573 bed8eb98 00000880 00000000 bed8ee18
[  547.334841] 1fc0: 000278d4 346e7573 72645f69 00000081 00000000 00000000 b6fa2000 00000000
[  547.343008] 1fe0: bed8eb90 bed8eb80 000277b8 b6ea8420
[  547.348061] Code: e5853310 e1a06005 e5b63060 e1560003 (e5934000) 
[  547.354336] ---[ end trace 8bd87feb5ea08d7d ]---
Segmentation fault

This occurs both on qemu-cubieboard and cubieboard2

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

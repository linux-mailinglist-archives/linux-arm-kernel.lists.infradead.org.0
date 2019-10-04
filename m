Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432EDCB407
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 06:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4GO/1ESUfxiCSy53w6o/czvMEjwMXAJdPY9Zt1+mXX8=; b=gqc
	h6zY0U+RwvnJFZxQqKfMxJtjKn/utby9tyfrogqXk7kWdiLvzYxXbhB4YjyDBRm3HKdxhD2vwociz
	8KClPRdQX8OWLejmEaaxrk7yIT8XPJEpDkntCjx7rUrv9GEAFkitKM3Ia1Ggi5ARN0RBakF00ye2B
	cv1TUV4/yT1x1Mof90ZV5Ffx5t4AEEyrluCm14cmi7jkhUTPeIHNSOnWg6/v2iAr/dpfzA4FRqPVZ
	0vKCQtNqIHHXB0cq90DxMgstzEDkbptlzMxmhRtb8Ovihc4WrAsf1D/Cs/oRSmMXdwN/Z20W2PG9n
	C6bw/q5mN0DPdTpollRH9BQsHQsrvrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGFaY-0001gw-Mo; Fri, 04 Oct 2019 04:53:10 +0000
Received: from mx6.ucr.edu ([138.23.62.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGFaS-0001g2-Ry
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 04:53:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1570164785; x=1601700785;
 h=mime-version:from:date:message-id:subject:to;
 bh=ql44aBwf8muduY7E8woRGM6sMLEeHBMPetACIWQG9tI=;
 b=Q4VLp/feDXPrh4QHucs/c3N57Xy27bNDSLdcPe47EVeA+ySGB0Z0m242
 aJve9fGSXqWsvLbau5mFmJ/CVYna/HCeYONFf1HGf7oShxBEBqq1z1tea
 HnxV/BFOrak5yML4faJRbytMGfqkS4Lz8HTCFgTcz0dwjfvaJXw+k1hAk
 aIIXpX2380QI0NxMbm/ZUh8gdB1vwMfUUDNuuWVZfGvhuQwRF6PCuxHwf
 HQsAlNExvXdHG8+1YHne2gsyku3RXd6B0oIXFVtZwt/7r2LJlyQB76MBC
 BU7kLTPbZ4Zthahk9bzP4SDKB1wpAt0kkmBr+L/ijE3TUyVyVfkU4iZzF Q==;
IronPort-SDR: BbGNdHGyh8lsB/xKHvfyrFLA58k4rpVRdjD8grWgjwrWcjdw4OwJB9AEz72+57650X1sHQvzQS
 NiyBwZlKjv8sYWsiMTCeCYtvwZXC3nknGTiA80MSB/wyd4DO3qVGqxy2mtVWaxEFN5YE3Fu31f
 gzXyF+7J9vOGsRol2ORC44xTFhCBrG2RGXwGyg86kivGj6hXuMz1q/3H33snv3QDb0e4gdIl0F
 GblXQW7J1h/FcG8D3RtISiw2C82FAWfMJSJBVsdoidIaPlHM5whkHmGKWpYLt3vHVX/4DNpQ6E
 cTM=
IronPort-PHdr: =?us-ascii?q?9a23=3AZQGg3xY9DINfb7+3iHoZJQz/LSx+4OfEezUN45?=
 =?us-ascii?q?9isYplN5qZps29bB7h7PlgxGXEQZ/co6odzbaP6Oa9ASdaut6oizMrSNR0TR?=
 =?us-ascii?q?gLiMEbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdFQ?=
 =?us-ascii?q?/iOgVrO+/7BpDdj9it1+C15pbffxhEiCCybL9vIhi6twXcutUZjYd8JKs61w?=
 =?us-ascii?q?fErGZPd+lK321jOEidnwz75se+/Z5j9zpftvc8/MNeUqv0Yro1Q6VAADspL2?=
 =?us-ascii?q?466svrtQLeTQSU/XsTTn8WkhtTDAfb6hzxQ4r8vTH7tup53ymaINH2QLUpUj?=
 =?us-ascii?q?ms86tnVBnlgzocOjUn7G/YlNB/jKNDoBKguRN/xZLUYJqIP/Z6Z6/RYM8WSX?=
 =?us-ascii?q?ZEUstXSidPAJ6zb5EXAuUOPehWoYrzqUYQoxSiHgSsGP/jxyVUinPqwaE30e?=
 =?us-ascii?q?IsGhzG0gw6GNIOtWzZo9f0NKYTUeC10a7IxijAYPNWwzj96ZXDfxchoPCNXb?=
 =?us-ascii?q?J/a8vRxVUzGw7LlViQtJDqPymP2usTrmeb8vNtWOSygGAkswF8uiajytsoh4?=
 =?us-ascii?q?XThY8YykrI+Th4zYs3P9G1SlJ3bNi5G5VKrS6aLZF5QsY6TmFtvyY116MJtI?=
 =?us-ascii?q?agfCgP1JQn3xnfa+Gbc4SQ4hLsSuKRITBgiXJgYr2/hhKy/VGkyu3yS8W4yV?=
 =?us-ascii?q?hKoyhZntXWuXAN0BvT6seDSvRj5EuuxTGP1wXL5uFFJ0A7i7bbJoY/zrIskp?=
 =?us-ascii?q?cfq0fOEy/slEnrjaKbdF8o9+q05+j/Z7XpvJ6cN4t6igHkNaQun9SyAOQ5Mw?=
 =?us-ascii?q?gORWeb+Piw2KHt8EDiXbVFkuc2nrPHv5/HOMQXvrS5DBNN0oY/9xa/CC+r0N?=
 =?us-ascii?q?AZnXkBMVJEdwuLgJLzO1HLOfz4Dumwg06qkDh1w/DLJbnhApTWLnjfi7ftZ7?=
 =?us-ascii?q?d960hSyAop199Q+oxbBascL/7pXU/xrtPYXVcFNFmayuz9Cd5wnqwXQmSOD7?=
 =?us-ascii?q?XRZK3bu0WJ7e9pLOCXYo4Yoh7mN74u4Pu4yTcFmV4QZ7O4laEaZHG+EbwyP0?=
 =?us-ascii?q?WYbGD2k5EbHGsLuAUWQ+njiVnEWjlWMTL6Yr0x0RI/BYOgAMLg2Iasj/TVwW?=
 =?us-ascii?q?G4GpBXYG0DCVeBF3bnX52JXfgRdDiVJM5x1DAJA/zpboYx1BSj/CT90qdqKu?=
 =?us-ascii?q?vSsnkdvpX6ydVx5uuVjg03rmZcAMGU0mXLRGZxyCdAbjs7zKl5rVZwgmuEy6?=
 =?us-ascii?q?dljrQMHNhe9/pPXh03c4Lb1eNnBvjpRkTKedLfDB6iQ9O7EXQpUdcZ3dADeQ?=
 =?us-ascii?q?B+Fs+kgxSF2DClR/cRlrqWFNkv7qeHhVDqO4N4xzPD3aglilAgBNBTMnejnK?=
 =?us-ascii?q?Nn8xmVDInM1w2dlqC3ZeEVxiuI92qZy2eKlEVZSxJrF6TDU2oWakbfoZL+/E?=
 =?us-ascii?q?yGB7uvD6k3dwhM08iPLoNUZdDzy1ZLXvHuPJLZeW3101WwBAeVwPu1bYPsMz?=
 =?us-ascii?q?EP3CTMFU4duwsIu2uNL04zCjr35yr1DDFoGkPyK3jr9+Y2/HigSUk75wqRKV?=
 =?us-ascii?q?Bqzfy49gND1tKGTPZG77MWuDom4wd0FVf1i8PEC9OB/1I6VLhXe5Uw7EoRhj?=
 =?us-ascii?q?GRjBB0IpH1d/MqvVUZaQki+hq2jxg=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HgAgDhz5Zdh0anVdFlDhABBhKFRDO?=
 =?us-ascii?q?ETI5ehRcBmBgBCAEBAQ4vAQGEOwOCSiM4EwIDCQEBBQEBAQEBBQQBAQIQAQE?=
 =?us-ascii?q?BCA0JCCmFQII6KQGDVRF8DwImAiQSAQUBIgE0gwCCCwWhWIEDPIsmgTKEDAG?=
 =?us-ascii?q?EWAEJDYFIEnoojA6CF4Nuc4dRglgEgTcBAQGVK5ZSAQYCghEUA4xRiEQbgiq?=
 =?us-ascii?q?XFo4rmUoPI4FGgXszGiV/BmeBT08QFIFbDgmNaAQBViSRewEB?=
X-IPAS-Result: =?us-ascii?q?A2HgAgDhz5Zdh0anVdFlDhABBhKFRDOETI5ehRcBmBgBC?=
 =?us-ascii?q?AEBAQ4vAQGEOwOCSiM4EwIDCQEBBQEBAQEBBQQBAQIQAQEBCA0JCCmFQII6K?=
 =?us-ascii?q?QGDVRF8DwImAiQSAQUBIgE0gwCCCwWhWIEDPIsmgTKEDAGEWAEJDYFIEnooj?=
 =?us-ascii?q?A6CF4Nuc4dRglgEgTcBAQGVK5ZSAQYCghEUA4xRiEQbgiqXFo4rmUoPI4FGg?=
 =?us-ascii?q?XszGiV/BmeBT08QFIFbDgmNaAQBViSRewEB?=
X-IronPort-AV: E=Sophos;i="5.67,254,1566889200"; d="scan'208";a="80145119"
Received: from mail-lf1-f70.google.com ([209.85.167.70])
 by smtpmx6.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 03 Oct 2019 21:52:50 -0700
Received: by mail-lf1-f70.google.com with SMTP id z7so587970lfj.19
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 21:52:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=UonwauBUbF5jJCMbv+kEyggRBo1MYeaIpr/rVjEka4g=;
 b=lCnJ4WPKV9ZEfVR+RbL4JCfvoU7FRO3Qfo0PKPar1fosNtEfAuoaSnGSHsxcHTuE0l
 LZrvDVpIo8HogyK4s6flTb5kqRppSJOhcw56xzwRb5R5hRCBDP/JMmR/rjTdO5avSEKe
 Rk5Lp8tFCIkhyNFTtCHE0cm6BwKV5QEgVwfb9I+r+kZAMFjFxqVJ2QNoXLWM6TpiXLw2
 wrrCt5cz/8H3UUT2/qr7B5w5xSMHs1KgE0iCMdOdz+dxYkKdIHyAVsVy4tN5v1h9cdhh
 MEaVHWc8/GlJJ9QHJDyJO/1GmUwN31WxLgZoAoQKj0zhBak7Xe6G4XfPOiXwEzXpo0Cy
 uQGg==
X-Gm-Message-State: APjAAAVLOKDGWxefKqNkd6qHv72c64j97cBIBG4is4CzAFSPP6dPjxgN
 Ih2ComE1iCJ73qgpHZU4qfEGog9IvCak1dIow4FWJV8fini2w8u7iaGtv6QlsOl/AUlgcC8no30
 YF6Jsavb0Gv1dVxPNoDtD5zy9Aju3924qrJW8oNI0BtobqizKPYsz
X-Received: by 2002:a19:4347:: with SMTP id m7mr7417795lfj.146.1570164764936; 
 Thu, 03 Oct 2019 21:52:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQwQ4yv8ZIWgEbfBVR+NQnXGTuto6AhZqOSD61PfrwsPbsqTELSWEjRUHKiie8C8KsIwGEinKXPs2u+mEFOfQ=
X-Received: by 2002:a19:4347:: with SMTP id m7mr7417782lfj.146.1570164764695; 
 Thu, 03 Oct 2019 21:52:44 -0700 (PDT)
MIME-Version: 1.0
From: Yizhuo Zhai <yzhai003@ucr.edu>
Date: Thu, 3 Oct 2019 21:52:31 -0700
Message-ID: <CABvMjLSR9kFJpU19OX8Us4jPQ9vuTtNR571Njn_gqqpb-=hdCQ@mail.gmail.com>
Subject: Potential uninitialized variables in pwm: stm32-lp
To: Fabrice Gasnier <fabrice.gasnier@st.com>,
 Thierry Reding <thierry.reding@gmail.com>, 
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, 
 linux-pwm@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Zhiyun Qian <zhiyunq@cs.ucr.edu>, Chengyu Song <csong@cs.ucr.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_215304_932041_9D8BF1F6 
X-CRM114-Status: UNSURE (   6.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.23.62.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All:

drivers/pwm/pwm-stm32-lp.c:

Variable "val" and "prd" in function stm32_pwm_lp_get_state() could be
uninitialized
if regmap_read() returns -EINVAL. But it's directly used later without
the return check,
which is potentially unsafe.

Also, we cannot simply return -EINVAL in stm32_pwm_lp_get_state() because the
return type is void.

Thanks for your time to check this case.
-- 
Kind Regards,

Yizhuo Zhai

Computer Science, Graduate Student
University of California, Riverside

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

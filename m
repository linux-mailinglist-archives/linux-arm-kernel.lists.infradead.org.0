Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C11DF41D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 19:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trgVDglzfSUzc2GmdrgAvNpF94yZyVC3/Iwb7ixQLRY=; b=FjxWSrkeyxnLJR
	mmh/Qm3dY9joXmLy7wDy55MJqXd2O5MPWGmCI05Fm5dS5hkXb/qIhxPB5bfCM+4xvX2pbAuSfFzPQ
	SacVhpq2Ek8ZI4+YnbC/7XiclDRpvpCgRbEJt1V/s+bBJ99kfATlnDFK5NJyJwEq05mvGY3zV9GsR
	1i8mpujTo1Ja8LfT1Py+FSjJ57WIQ0nHfg68M8rW77eO7TT/arky9MK42A7GqqIT9WPTKpvnNryCy
	E0n6WiBVxzCJA2aP733VZe/D1qam9FQsr1ha/2/DCFrXmpD3rcndtyjSdTzR3mFu7tdoRfB6CY/Bs
	L3GtstmW8XK9PSv+RxJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMbQp-0007Fr-3m; Mon, 21 Oct 2019 17:25:23 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMbQg-0007F4-59
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 17:25:15 +0000
Received: by mail-qk1-x741.google.com with SMTP id y81so9500741qkb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 10:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=puh0HaQp8tS+SKvTxBh5Bw6nNU6dCLvmCvb4xlqnNkw=;
 b=LrddelN7aA9bef4/eIB+Ib6Ci1IUqxOU9X753Gd1U5va+vzUk8JQzI0fxG5e1B801k
 91Wd41Xc7Yt1vZMyYhZWQs/i7eVtQJeTFBARPSEjqNgkAS1Dxn3TmLlE709SOG9G1v/l
 FxI9bWug0rv0uOn0SxqCwTsT/2LhPq6FGQiplND+N/7PTCt+2PBO7E75TpF6eUzqOyE6
 XMCCcaqqFdXulj0r2H2Z0RCXXyQXM6gbjY3dYqx6gYXcYSc0oHHfwEzzsiTEJu2kMhSB
 +rhSRmfU24K0ggMWP2gXgyc1bcxDm/ij6t6zsg33Oc+Wh2MaDpGBJyXlSNaleNQ/1rvz
 i01Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=puh0HaQp8tS+SKvTxBh5Bw6nNU6dCLvmCvb4xlqnNkw=;
 b=WhOsQq+4k1CIeONxyRf6Ne0Ntrg5rVHiiiPWFDp+YvWxC0RPq+OpSVXDbog6uhlmsk
 ugD/3JLhrIQLCXRlbCuHRrczUu6VmToBT/UyPmgG7PTxdL3knr7FFnDbIo7Ab7JYD220
 t3Kyf4DxWpwyGRPyP2h3T0I0o2JWx3hiUYQqf/MWNzAJ9oCNt07ZkH4DY/s8+CzWnvyk
 evtpYWtz362vPDzJR/ECJ/x4BLPjsWw5up1FUC7mGe6I+zaxZ5CS0AYOn5ta6l+aeAZW
 qO4hmbj/ptCTUikgNov0/TZSQRWOGVydO5C1TUxW3JCaTebRQaesOOx1CkJ3ZJul2okT
 qUAA==
X-Gm-Message-State: APjAAAU3fU0/EN6g2cLR7aRWtC5lxlIn9Vt+mQQ6iid4HYHQV3jUxiEV
 Qk4JYsxC/swFY1SYROG7OgdmvA==
X-Google-Smtp-Source: APXvYqx03r3bqCwmLO6I3HtMtCjp3zyZ2iq2xyxZmQ+mEjuUyp5Pl1acd32IMkr61SARy3aJNMX6ww==
X-Received: by 2002:a37:e503:: with SMTP id e3mr10804782qkg.491.1571678712851; 
 Mon, 21 Oct 2019 10:25:12 -0700 (PDT)
Received: from [10.241.90.10] ([155.52.187.14])
 by smtp.gmail.com with ESMTPSA id z70sm4453608qkb.60.2019.10.21.10.25.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Oct 2019 10:25:12 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
Date: Mon, 21 Oct 2019 13:25:11 -0400
Message-Id: <A1A8EEF0-2273-4338-B4D8-D9B1328484B4@lca.pw>
References: <6703f8dab4a21fe4e1049f8f224502e1733bf72c.camel@suse.de>
In-Reply-To: <6703f8dab4a21fe4e1049f8f224502e1733bf72c.camel@suse.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-Mailer: iPhone Mail (17A878)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_102514_340047_9016C8B1 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: f.fainelli@gmail.com, mbrugger@suse.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Rob Herring <robh+dt@kernel.org>, linux-rpi-kernel@lists.infradead.org,
 m.szyprowski@samsung.com, Robin Murphy <Robin.Murphy@arm.com>,
 phill@raspberrypi.org, will@kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Oct 21, 2019, at 1:01 PM, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> 
> Could you enable CMA debugging to see if anything interesting comes out of it.

I did but nothing interesting came out. Did you use the same config I gave? Also, it has those cmdline.

page_poison=on page_owner=on numa_balancing=enable \
systemd.unified_cgroup_hierarchy=1 debug_guardpage_minorder=1 \
page_alloc.shuffle=1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

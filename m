Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0C31D7EEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gsWZHlBpP46E+mvAe2PZwiuURqgmtIigEa1sD4wZtWs=; b=rPTE9h0Lx+9ak0
	SViN0pmxNrYns/htNnu0ZILnFydJx0rQiXANsSdK0C6qunVY8NbB+Cyz242F5mYYnUU6N1Ywye72Z
	BfdM/irB1x87MI+j5S1ZS9r5ysp3JV//HqxYB845Kf7SxFUZFIa+4o3fAiEncz+VgJl3R7cDdiY3d
	PSFoLfRiUNs964RvOWpwGkPXePgUhf1RnRBMeXpm5rvFkMl5ZtLbuokW2vNGZyzfvkXgh1Ab1/F8L
	uo05JTa42D8xZxeY6IWZQ1iImaPLDZOa4n+zPBuxfwCv3PzUe0MOKsUDu55ipGSwfpxYZVmncZDOK
	Z3gFPdOTOiednAL3e76w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaisV-0002HG-Ge; Mon, 18 May 2020 16:44:35 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaisC-00029Z-31
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 16:44:17 +0000
Received: by mail-wm1-x344.google.com with SMTP id z72so240754wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 09:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mrOVKHVJapH6kF5qReOp0wglPtw6uXIPRlbofv8HkOI=;
 b=nSW/zmI+oIKzyOLNG6etkGbyYqHBBsA2N8whXlXs5aLplRWbKVRVZJuGjkipitkMFd
 JpDvh6n1I6fl6OnyDNwsPT/olbSNWIvVDkOpC9T4/wi31U2gZWWAb9vaKvbqwiXWSzRE
 /OCEBdRmoFd+eNbb5XCzC9mXeGwdFmBqmUkmzBgIlhfo5zWNUwJ7+xhAVSwwqpiTwxhR
 YbwDxXTWPeNSRUpgsH2ZgBcUrvqn70knzY40sUTMnYGSikYPo9uylu89drqXy985LCES
 jwguU3GVWDkHvHwoJhoQ2HH/fA+IMRHX4PXEy9HH7+Dn53Y38W//jL36zKm6iMSn9XTQ
 JH1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mrOVKHVJapH6kF5qReOp0wglPtw6uXIPRlbofv8HkOI=;
 b=mhxnuf4AIATAsCDN/Tve8PJWdWM6Q664jrdXDBX4TY7brmp2GMXgKQE8QvKfIQeP+N
 DmNKAfnqX0mF71zaXiDdFkfrVzHVMg8BDpGKRPFuosS+emppZHkVt22+fu9vGX1UBVTs
 klYAYLonZBRJN14Lw6FxO2sDDG8uEXeo5FVDr90sjd4XU6jXY6K82U/ZGbZvBjimc5Fo
 9s8rxW/w5q5hn+XiJzZQgZzKH5NKEseJHjgNEgKH1GrB/qqqtxAFur3O/gjOX//pq/Ej
 G72KMZJBp6PZdotn2wHPlUXqLVzknz9LO7ZJwWdFGJuk4/frvvafyt9tDlmQ7eAZENJD
 lPaA==
X-Gm-Message-State: AOAM531DcE2oIf/fxgzAvAmA2tP7abaY/5v2rgkM2N8oBcTpC1cSHnPL
 8WIw+enlNC6AlcxMa5xGITNa1w==
X-Google-Smtp-Source: ABdhPJxvMfrufurokRmF+O8ESaZRzfiwWThU1ZHkuIFz5YhCwG7DhnQCN+0EO7FHTPHDCdOSTcYLjg==
X-Received: by 2002:a1c:2e4d:: with SMTP id u74mr230711wmu.145.1589820253760; 
 Mon, 18 May 2020 09:44:13 -0700 (PDT)
Received: from dbrazdil-macbookpro.roam.corp.google.com
 ([2a01:4b00:8523:2d03:4431:2de6:16f:7f90])
 by smtp.gmail.com with ESMTPSA id e21sm125834wme.34.2020.05.18.09.44.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 09:44:13 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
X-Google-Original-From: David Brazdil
 <dbrazdil@dbrazdil-macbookpro.roam.corp.google.com>
Date: Mon, 18 May 2020 17:44:12 +0100
To: Andrew Scull <ascull@google.com>
Subject: Re: [PATCH v2 07/14] arm64: kvm: Split hyp/switch.c to VHE/nVHE
Message-ID: <20200518164412.coycmliijagaaw4m@dbrazdil-macbookpro.roam.corp.google.com>
References: <20200515105841.73532-1-dbrazdil@google.com>
 <20200515105841.73532-8-dbrazdil@google.com>
 <20200518152851.GA147668@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518152851.GA147668@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_094416_191178_07BD0F12 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, David Brazdil <dbrazdil@google.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 04:28:51PM +0100, Andrew Scull wrote:
> On Fri, May 15, 2020 at 11:58:34AM +0100, David Brazdil wrote:
> > +__kvm_nvhe_sve_load_state = sve_load_state;
> > +__kvm_nvhe_sve_save_state = sve_save_state;
> 
> Building without CONFIG_ARM64_VHE leads to a linker error due to the SVE
> functions being referenced in this list. This is caused by
> CONFIG_ARM64_VHE disabling CONFIG_ARM64_SVE and, in turn, preventing the
> generation of those symbols. There aren't any references from code, just
> this file.
> 
> It can be resolved by having the SVE symbol aliases depend on
> CONFIG_ARM64_SVE.
Thanks, will fix the linker script in v3.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

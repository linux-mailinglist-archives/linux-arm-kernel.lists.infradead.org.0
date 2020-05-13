Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 498151D1038
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pliY/bd52z+RKovh1sxtYoNuB+aXT/cjAChQ2hTYdNM=; b=krJj653flD3HCr
	/Qurc79rfHZTUe+pfq3ZDRtCKcc+NG/jI7p8T/jHGd8NksR3c5SLC+3GKrq+t3g1FexeCioP//iuC
	qRVdfS2flhWeT/c9/XR6WjdvtWhFTEA55br8rPNhaO4jbwVMUu8rmfx/Fz+TQmm5Fw0tNBcvXBNoc
	+Ga7kSCqFOHeFU+aQCZNKeJsgTQALTIp+3j7adrtpdWDaCENe5NCe6Q3sbRPjGtLoWXYgyLigkpIt
	s3/DtWLAEnWN2jWT8SZwhWa0uS2TwtzPJpiSLYUwlwfP5McyxxI55Oaz1aFbsMrdvIIPh3pSQxvXZ
	xWmLpVyFSCyA3oOJmrKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYowp-00057x-Qu; Wed, 13 May 2020 10:49:11 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYowY-00054g-E4
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:49:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id n5so13035760wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 03:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DkTu8Boy9+QFrN/nz9Dlp+esnFEQSCB9OlQtV2ZrE7g=;
 b=R75BSXoo/V9oojjqwA3xBMD3P4vlpXd3u9G2gA7d4K574Evnf5YbrWWh+MGgJzlRmY
 v1SYw72qo/2orD01DCCs6OJmX8zpu4Uj6M9TykGeeBcBBUXlh2oBFAV6WlVzt2ddERvJ
 0oE88kPY+xs/eeYEO50EPToSNjn+iue4TmSdkGMZbnorC6LpOR0aKfaLHLFbI9zn7kuP
 jFTLhAF4AdrzPshcFYHolAqw0VaLGa/ZZ9ozjDPA9+YBafjJWAKOH1XyjRMzS4HtINQY
 PSM5KlyRMM1H6oC2eewNV3faKxvpmbWqilenWE9pZ0cWG/Vzk8PzbEvUCt7ukN3wzUub
 tu1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DkTu8Boy9+QFrN/nz9Dlp+esnFEQSCB9OlQtV2ZrE7g=;
 b=KBOd6uLnJAA1IsWOwt7QsRFDhELqpS+uBGis1QDmoQMiszrFawc49pqrQFKhD+QVyh
 6P5SKXRTKNKuMEBAdYW51EndkAAKWRFlhiKrmEF3uKFA79aHWdax0I5rJr0nnunJ2z4i
 qJIW3fQBi3xwp4G2XKj+b5hoKeZ9P7Nc6vABDTtdbioHIVaDCRnzRWCVbCYvG9walAee
 vYRs8sy78d/P6+8U1y5uq3Wx2uSi8Q5wPY1v2Jon7a18vGbLCfP+ymHLXjDmuNQLGf0a
 0sRZoICRVjnKwiX9w9NitGszpvlu4FfEwVtN9R4WZB6Lczx6mRPrpo9Cjgy7CrJDG/f1
 fGfw==
X-Gm-Message-State: AGi0PuYa5VMHiAP/MsEKh9WasPXrBb8k+4ZXOLBLG6opx/iWaCgGmVxd
 /IALjFq2UYTcQoE8c54Kk3H9FA==
X-Google-Smtp-Source: APiQypI/miEqKd1bRU5KlIz6q+mV3Wo21I4z4di7LSyrHxy1dzFnHEBiY8isceJjKhRMQ+TuIif8YA==
X-Received: by 2002:a1c:790e:: with SMTP id l14mr41466821wme.174.1589366932710; 
 Wed, 13 May 2020 03:48:52 -0700 (PDT)
Received: from dbrazdil-macbookpro.roam.corp.google.com
 ([2a01:4b00:8523:2d03:e021:170a:2079:28ea])
 by smtp.gmail.com with ESMTPSA id p4sm15896164wrq.31.2020.05.13.03.48.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 03:48:51 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
X-Google-Original-From: David Brazdil
 <dbrazdil@dbrazdil-macbookpro.roam.corp.google.com>
Date: Wed, 13 May 2020 11:48:50 +0100
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 02/15] arm64: kvm: Formalize host-hyp hypcall ABI
Message-ID: <20200513104850.6rer4ued2uq6lpxs@dbrazdil-macbookpro.roam.corp.google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
 <20200430144831.59194-3-dbrazdil@google.com>
 <87d07fj3g9.wl-maz@kernel.org> <20200507133320.GA16899@google.com>
 <871rns14dl.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871rns14dl.wl-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_034854_540070_6BA969E4 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>, Quentin Perret <qperret@google.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, David Brazdil <dbrazdil@google.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > In fact David already has a nice patch that transforms the whole thing
> > in a jump table, which is much nicer. I'll let him share the details
> > :)
> 
> Ah! Looking forward to reviewing it then!

It's not actually that different. It still has the same header file, just uses
the macros to generate a jump table rather than an array of function pointers.
The main advantage being that we can avoid .hyp.text dependency on
physvirt_offset. Feel free to have a look, branch 'topic/el2-obj-wip' at:
	https://android-kvm.googlesource.com/linux

Perhaps this is not worth the trouble. We do hope to get to a point where the
ABI between .text and .hyp.text is formalized, but in my mind that ABI is
unlikely to be using this same hypcall path.

On the other hand, I've played with preserving the function-pointer interface
in the last couple of days and later in this series we do end up having to
declare all of the hcall entry points (which now have two ELF symbols), so we
end up with a similar table regardless, just with no IDs assigned.

-David

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

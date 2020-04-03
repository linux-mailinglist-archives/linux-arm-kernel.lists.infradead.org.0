Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB16919D702
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 14:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4GXcTvJ0j16xbUWYeIrm3ef4KurC4lDnKCDGcHjPo8=; b=G8HvMLpTfYv8vv
	3zfCrLfrRO42ccH4wTmROW2Tvw5wOXps0spwapoF5dLW8C7kG2m05msVTqZtp+nwTKrVsfuAaWqJG
	FMffDFsFjaN0UmNBBq/QOLCv9gxnOva1gmnvzn08uirhIe1YGm+6EsNX1DnuAfpkID8JMw8yOzzme
	1w59YpYWln/K1H0HWn8lYIGTN0ZxCdDTo4W9LuYGMbZijq4oGPyoDLFGSMG5QVEUir654ZWXMuQwz
	3/cISYoKO1k5f1wwIg3tHn6MkvueQY+Tbge5XDnbHiWp4LXA5WLdkrS6msftor1qoou5v2z/mTrxr
	gnxpv7/WVxL9nkC/qM1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKLtL-0002z8-0W; Fri, 03 Apr 2020 12:57:47 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKLtE-0002y2-UG
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 12:57:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so2156889wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 05:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=De90a92kWZhlz8/GqOLJr1o2dyhjPM0KlYRv0Pnryd8=;
 b=v0geNIrY4VMNqemSmVkdgKaGLuj11BxeFgEOQp7x7J8E5O4Ts2mvwj4katWM7F13uE
 8fqzIQnaQTrs5W2NO0Vhb6xuCwU8jxk3SwLkz5wfbCdwPte34VzxSeM535pysZxREL1d
 AScFZRbwVD/h+4xlF1wvG41/B+Yn/SZvOrWej5mtajrGlhwcjXnmGzGSew0bkSMOsIf5
 6cLDrWbwks1uPMr/xHy0n9HyOEEjYXf8aq8HcebHPBXW3qp2F97BN0kRoJm/Ridx/uUf
 Sb5mZ1o7UwuvNusa0MC4IlLryA2MmtrJfc/JlUNW9ayaly/j6IoIu7ncmBIxqf6728lN
 vjrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=De90a92kWZhlz8/GqOLJr1o2dyhjPM0KlYRv0Pnryd8=;
 b=X+YbfemLoucnCxtH+JvLyTEXvD4BiD5uP/KlPyZw9az953nXpoKbqsT0fUyribtBwD
 4n7Wn93hxzEbYD9nlh9X3qTxwX33tpzlqZjfW+l3sX37qyUzixrfwZG6pelnpwyUnrPC
 Q4Cd8OLPkfVKfmu82nAsHgLwsy3ITw9aiW1UnhRFG7RCUMXoklOeVgRrGdZbi9JSwLSt
 Ub9OoqKpQYgtNQbEk0Eb7sWR4xKNh+jxtUmxdjH8DD6PzESH+8TBrZ/YObti0PaRY5xF
 8+nyvfv+CDyukQM/WC03WyKa6zzmYLIaMt1j9XClIdsMkrPneeCipG9OMPrgsPvl+PEw
 fSwg==
X-Gm-Message-State: AGi0PuaIM4DlC1/uYVzA4TvFHZMhLDkDOFN1u6cYRnH2XThUI64/ggNV
 Uha4zk6OeUjThAck7LHF7F8D3Q==
X-Google-Smtp-Source: APiQypJmLc85SD7IKOR2B22lhDeMH0Nl0U4hNc2juYBV0N+oS3eCdXIlMRZIUSQq+/Kdj2OELmxrJQ==
X-Received: by 2002:adf:f50d:: with SMTP id q13mr9155725wro.374.1585918653352; 
 Fri, 03 Apr 2020 05:57:33 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id q19sm7582976wra.38.2020.04.03.05.57.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 05:57:32 -0700 (PDT)
Date: Fri, 3 Apr 2020 13:57:26 +0100
From: Andrew Scull <ascull@google.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [RFC PATCH] arm64: unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
Message-ID: <20200403125726.GA33049@google.com>
References: <20200327143941.195626-1-ascull@google.com>
 <1705907b-234c-6f56-1360-f598c8047d1d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1705907b-234c-6f56-1360-f598c8047d1d@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_055740_998720_B72FCB1E 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "qwandor@google.com" <qwandor@google.com>,
 "qperret@google.com" <qperret@google.com>, Marc Zyngier <maz@kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Will Deacon <will@kernel.org>,
 "wedsonaf@google.com" <wedsonaf@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 James Morse <James.Morse@arm.com>, "dbrazdil@google.com" <dbrazdil@google.com>,
 "kernel-team@android.com" <kernel-team@android.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "tabba@google.com" <tabba@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 02:59:47PM +0000, Steven Price wrote:
> I proposed something similar a while ago[1], but Marc was concerned about
> the microarch detail[2] and hence I split the workaround into VHE/non-VHE.
> 
> That said I'm not saying this is necessarily wrong, just that we'd need some
> more information on whether the non-VHE workaround is suitable for the CPUs
> we're currently forcing VHE on.

We noticed that both the nVHE and VHE workarounds share the same
assumption that the EPDx bits are not being cached in the TLB.

`__tlb_switch_to_guest_vhe` and `__tlb_switch_to_guest_nvhe` are both
setting EPDx as part of the workaround. However, neither handles the
possibility of a speculative AT being able to make use of a cached EPD=0
value in the TLB in order to allocate bad TLB entries.

If this is correct, the microarch concern appears to have been solved
already. Otherwise, or if we are unsure, we should go ahead and add the
TLB flushes to keep this safe.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0775E1C9D09
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TsqbMv6pdt9BXTfC7/46jUHGcqmGGJGgP+c8uPixzA=; b=Y1pTmqHjih1sQg
	mw9vmWXxlG5zLrtK8gKA9M5SM2WuYRzMmBsxWwmCP6Znor/VHlrmpTnPEDGCg7o5foYw8IUhPY8YG
	tmiazo/aEGUHJehsv7vzaA5d+SZudUZSYhbwR5UBQyp7zTGV3HsZbV5S4nniNHbveCYJiu5kGZd+8
	sPg8b85GOgMbyxc/Zq+UU0lU3Vzbm3Df7CKbr31dv7RCAiZKcX4Gg3A3LuRQi/+pyrMqh505a17Ty
	Ys0cYQ/sFyQjvzsgFVuuM3STJDXlghzs+C0HdTJYEnUK+eRJMMHDOsgBnWT0zzPRmSFNTchfGiR+c
	f0hjZorMEv2+elVAjE7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWnqz-0005dm-6i; Thu, 07 May 2020 21:14:49 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWnqr-0005bF-5h
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 21:14:42 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ms17so3203768pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 14:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=ioAtKKBLetMrNC3UOrZBDpCms01n9tKhgmw2P4KuQ10=;
 b=EvyLgigNsQCXtN+ZrgfW3obNeN7n95kvB+iKsA3+ZKnx6Pg5GXwuwrpAimKciweQLh
 A5IVBx9MVFabDi+Q4FiPn1IL+Ut97gCeTeb7mX2JJGN/XYRuTQAwLpP2rSFctxdoyafo
 dTtwQ79hSAA/WHsbFnshcKXq7Ma1fctt8eopE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=ioAtKKBLetMrNC3UOrZBDpCms01n9tKhgmw2P4KuQ10=;
 b=Hn8Iy6Gj/K6JI3bpNoLAic0a5pxe9a3q1aNQAv3gD/1CX/RYyQb+qrlnB3Ayb/W+r1
 vuZUFva08ZUGn8Ke+c3FS3JPfUfsZjpYV3jXcgwOMvseu35mFpllG49Oj9L0hcbGifeD
 z3YRE6DhFSHyj6r/vouWjetmzfCXz25/hy2eDlbjOGSzje65GYd36hRkAzK6niUbKAJg
 7rb68qMOC+n6SeDdHksPqVoId32/L+oIQP4CcLxmGNA6pm57isj6i8g+CJmMsi5Kbd2k
 RQMbC8RtVIM7aRxhC3b5XGupQ2rBkkSINMJBvwA3qRjD2oQ1pW35mK/TCLyvsUB9N6go
 Em+Q==
X-Gm-Message-State: AGi0PuY7er88NOF9UrHzSSWEFm0LC/Ds2aeJpUacOaxJaR3MqMD+W8/M
 j7Nxs0GC1nbtOIFlDSxGnv3HLA==
X-Google-Smtp-Source: APiQypJ3ry9ekB/Mu6A+agxgYdfo7bbCE87C+rrfPRAkcpuV1AuLxv17o9r4CKcuSidKzhyfOYnUbA==
X-Received: by 2002:a17:90a:fd94:: with SMTP id
 cx20mr2284622pjb.157.1588886079220; 
 Thu, 07 May 2020 14:14:39 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id x63sm5873453pfc.56.2020.05.07.14.14.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 14:14:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200507192157.6831-1-sibis@codeaurora.org>
References: <20200507192157.6831-1-sibis@codeaurora.org>
Subject: Re: [PATCH v5] iommu/arm-smmu-qcom: Request direct mapping for modem
 device
From: Stephen Boyd <swboyd@chromium.org>
To: Sibi Sankar <sibis@codeaurora.org>, joro@8bytes.org, robin.murphy@arm.com,
 will@kernel.org
Date: Thu, 07 May 2020 14:14:37 -0700
Message-ID: <158888607765.26370.18078298627976225073@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_141441_236652_FA5AC613 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, dianders@chromium.org, evgreen@chromium.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 mka@chromium.org, Sibi Sankar <sibis@codeaurora.org>,
 bjorn.andersson@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sibi Sankar (2020-05-07 12:21:57)
> The modem remote processor has two modes of access to the DDR, a direct
> mode and through a SMMU which requires direct mapping. The configuration
> of the modem SIDs is handled in TrustZone.

Is it "The configuration of the modem SIDs is typically handled by
code running in the ARM CPU's secure mode, i.e. secure EL1"? And is that
even true? I though it was programmed by EL2.

> On platforms where TrustZone

TrustZone is always there.

> is absent this needs to be explicitly done from kernel. Add compatibles
> for modem to opt in for direct mapping on such platforms.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Is Sai the author? Or does this need a co-developed-by tag?

> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---
> 
> V5
>  * Reword commit message and drop unnecessary details

I don't see any improvement! Probably because I don't understand _why_
the modem needs a direct mapping. The commit text basically says "we
need to do it because it isn't done in secure world sometimes". This is
probably wrong what I wrote below, but I'd like to clarify to confirm my
understanding. Maybe the commit text should say:

The modem remote processor has two access paths to DDR. One path is
directly connected to DDR and another path goes through an SMMU. The
SMMU path is configured to be a direct mapping because it's used by
various peripherals in the modem subsystem. Typically this direct
mapping is configured by programming modem SIDs into the SMMU when EL2
responds to a hyp call from the code that loads the modem binary in the
secure world.

In certain firmware configurations, especially when the kernel is
entered at EL2, we don't want secure mode to make hyp calls to program
the SMMU because the kernel is in full control of the SMMU. Let's add
compatibles here so that we can have the kernel program the SIDs for the
modem in these cases.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

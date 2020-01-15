Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B44413B816
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 04:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:From:To:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IqeyoJ3bvVGhiS3e/V10cWBp3/aVTNrAgjESvF+6fc=; b=gyaDOrgYoWVDo1
	wZSkeHg3aBY81VhvpVgS9SOPJiMOru2kcD8PJPDJFEJ0EljlkRQMc9cHWmSrQzp7B/GTbTC84zWmN
	jcqbExmhf55/mRw+lwjsyOA+QNrYUryAzyEwWPLwoQyT0a9Wm8W1w0hCGt/MDOgVTZ9Hmx6NNfXoY
	y9Lfrsh5tOkV4uFckoNO6M1rTuQ9Tk+DZv45ZMB2YutICFljM6nv8MLblksBEBaubRvtA+H+f26Nh
	NKJNDsc+vB/Q5iAwOtPouK0EAquC9DK2NdHsq7AdcdtTI+h493DOHvFmsI/mljMyvFGENVXZgfPTW
	mfxLYYwtO1e7Of6zJUxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irZ8v-00028O-9k; Wed, 15 Jan 2020 03:14:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irZ8m-00025y-1n
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 03:14:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id x6so7747001pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 19:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:to:from:subject:user-agent:date;
 bh=O3jTDnmwru005Rmfwt1mrDaoL6O6mw5SG6rHGZeKVSY=;
 b=CnLgBEiDGZrSAAG3xSHFFUBWxQ8iCuMe1rvegmralFbRWQvEMK3aMlu4eLGm96eWrd
 GFvC+Suc4XwIYMBYZvKevz493ll0wBmoeeSqIwak3qjanRzH+T47QB2PlmoFlyRIMHF8
 sDXzapZJuU3CKCA5dPtSiek8bRU5lTthQaKDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:to:from:subject
 :user-agent:date;
 bh=O3jTDnmwru005Rmfwt1mrDaoL6O6mw5SG6rHGZeKVSY=;
 b=DQo+Yi/41JI8itqVErNTirMdLNzyzzwZY5ms2SIDeF1gM7GzQhWyWUWW2fjMRb9U2e
 DyeBbo2Rae/ZbnfQYztj+JPWfP/vmLy3+EjnYS96vkD2J9ppt6PIZwEuFqG94YoHWN2p
 KA3dIsaNx1+4XAPQq49wBbWhv1sz6dF2dOo5MDak/vPKZ2qMGM+ntxvexsQAmos4lDBP
 mgaNCRZjdFCic5IEoWa85ZKuKH5qKKA/dqkbERK8KyCn6oNuHikVXksqqZJK5uwEdltT
 XS7ueApHsOWrN39p7CZ/AbQwd4T2nVsbGhr8D2mCSxhN21w2D8dI4M1aMUajTfBxgOke
 jbnw==
X-Gm-Message-State: APjAAAW7cQIK9VcrdLV9s5rnTxSHrQL6LSD7yqfCQMYC2VJyfC83UBox
 DfTiIhKHlG7LvpruzgN35V3bkQ==
X-Google-Smtp-Source: APXvYqzVr+KpYU3PHgwnjSxEm/7uHjy8e95zrZ1QZ7pws0hBP/Tv7PrdWYaxZslZbmgStCQ2NSd2Ag==
X-Received: by 2002:aa7:8283:: with SMTP id s3mr28715427pfm.106.1579058077486; 
 Tue, 14 Jan 2020 19:14:37 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id s26sm19589003pfe.166.2020.01.14.19.14.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 19:14:36 -0800 (PST)
Message-ID: <5e1e839c.1c69fb81.1ab3c.06dd@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20200110101802.4491-1-saiprakash.ranjan@codeaurora.org>
References: <20200110101802.4491-1-saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 devicetree@vger.kernel.org
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Add iommus property to QUP0 and
 QUP1
User-Agent: alot/0.8.1
Date: Tue, 14 Jan 2020 19:14:35 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_191444_092852_D710702C 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arm-msm@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sai Prakash Ranjan (2020-01-10 02:18:02)
> Define iommus property for QUP0 and QUP1 with the proper SID
> and mask. Below SMMU global faults are seen without this during
> boot and when using i2c touchscreen.
> 
> QUP0:
> arm-smmu 15000000.iommu: Unexpected global fault, this could be serious
> arm-smmu 15000000.iommu: GFSR 0x00000002, GFSYNR0 0x00000002, GFSYNR1 0x00000043, GFSYNR2 0x00000000
> 
> QUP1:
> arm-smmu 15000000.iommu: Unexpected global fault, this could be serious
> arm-smmu 15000000.iommu: GFSR 0x00000002, GFSYNR0 0x00000002, GFSYNR1 0x000004c3, GFSYNR2 0x00000000
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Tested-by: Stephen Boyd <swboyd@chromium.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

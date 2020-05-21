Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41B91DD304
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 18:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIFY0W78oxYnJIrFBrEkNUR3xxcBp336PMxJpcerzJk=; b=N/c1idaqTBuAt0
	62csvlAfW6ttU3JRrCTZ2OPbVYIyAsmh8i4o4v/21sgmZ/zqDelxhviXuwb8OziNpvDfdLCqxPvJj
	YWRotDRrcZpT39FnixFd/ta2ykFIEGo07/dS+gv4z+Bdc1hvFhIRcb2P6nzbbHx1kYsk0AEfAfOS5
	6KAg5DHhGiGWtHc07RblpsVEh6GexZjLP2rOeSK8mB9MdZ+4/M705ekg0mUud6yjYxNOLiRJsY4LN
	zU82Se3zFNM9qFqRA7ZqCMf8KuvARBE0Y6iQFC92upkHpn85ckx7oMgwcwn/9xxYO7qeiRs6qLex9
	61UkFYbQAP4xzO6w+ILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnvt-0001wN-Q9; Thu, 21 May 2020 16:20:33 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnvk-0001vp-TR
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 16:20:26 +0000
Received: by mail-lj1-x243.google.com with SMTP id l15so8621705lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 09:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KhSteGsD4RiqQuK5YmLBZC6UpLmDwoaKdLBagEsgYl4=;
 b=UUK/8ULWjMB2mBygCKclhU6LqqpSWv9z30+t+BDLxfb3VTXARp03TokADV8sjD+Rm3
 OFL0u+IlZG9t7sz8xdVVkBlMtP35b0P9vK22Ys0vOVkK66J0NVlx301AHSdzgwFINPFm
 A8cTPxfFHhEdOwPW+3RdCzCQfr98gE40Qk7QI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KhSteGsD4RiqQuK5YmLBZC6UpLmDwoaKdLBagEsgYl4=;
 b=IQJvDzpoAxpPHwx4zBa+xTWR/h6CBB3OGDMImrLzCzD3WaE67B+NF4MHPLwQXcnAjB
 NjQOH0Ae7MjhbUiFKo8iiRQJIO75NJgNeSj2GwdhUIq/mXgl/meHONolg30NxbKkDfry
 DdFG6pboeTgIr6PopkEoTDesdJkiQPrSGOgpUudMd1Hn8Wkm318aefjQ8nn6AQ9//drq
 d+Aa3HnS5fSIofwWJRmk+vQvlyHQxgQfyhm3j3Gglpa/MswLIMRZX1XmyoYQQb6ddUU/
 nmBAOEKIbopEh56mTGpTHMQUbCSON3+Y9/5kZED3UTYiU61Js66M+ZEzWbziMV9djX3d
 fBHA==
X-Gm-Message-State: AOAM531WDzxpUkZN/M8jC0FMDBXJrpG0H7dwqs0qaM1zn8ij+mZ27ngN
 EPMF6wx+dDklK6WyDF0tWQeXC3ofgpI=
X-Google-Smtp-Source: ABdhPJzEZv/bienpDQg8OCfLj8wFn5AKygqK8XUZUoW3KJRz+LKl3M0lnKCuVqWAn3XjZKRpvIW8Vw==
X-Received: by 2002:a2e:9f54:: with SMTP id v20mr5190385ljk.107.1590078022113; 
 Thu, 21 May 2020 09:20:22 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com.
 [209.85.208.171])
 by smtp.gmail.com with ESMTPSA id w15sm767681ljj.57.2020.05.21.09.20.21
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 09:20:21 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id z6so8944414ljm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 09:20:21 -0700 (PDT)
X-Received: by 2002:a2e:8018:: with SMTP id j24mr5189945ljg.99.1590078020706; 
 Thu, 21 May 2020 09:20:20 -0700 (PDT)
MIME-Version: 1.0
References: <1589946996-31264-1-git-send-email-pillair@codeaurora.org>
In-Reply-To: <1589946996-31264-1-git-send-email-pillair@codeaurora.org>
From: Evan Green <evgreen@chromium.org>
Date: Thu, 21 May 2020 09:19:43 -0700
X-Gmail-Original-Message-ID: <CAE=gft5pcHwK8yjObNSSH=U_B6Pz++bDaeUxZhPyJfG2E7LRAg@mail.gmail.com>
Message-ID: <CAE=gft5pcHwK8yjObNSSH=U_B6Pz++bDaeUxZhPyJfG2E7LRAg@mail.gmail.com>
Subject: Re: [PATCH v11] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
To: Rakesh Pillai <pillair@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_092024_950456_8EA5CEC2 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 8:57 PM Rakesh Pillai <pillair@codeaurora.org> wrote:
>
> Add device node for the ath10k SNOC platform driver probe
> and add resources required for WCN3990 on sc7180 soc.
>
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>

Reviewed-by: Evan Green <evgreen@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

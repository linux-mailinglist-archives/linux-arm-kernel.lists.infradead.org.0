Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CC2CC4DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 23:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbaBVhAFKoOA4Ux0yp2Asdlo9g8VdQpf6O4oTDtlnKg=; b=SXFEjz5fKTII3N
	sFiUi5Z8yYjOIVPViKW+dy5bSwGluXD0uwi+nDgEoE1MBdK3ETqMdwojaGoMgbtjo74dwN4F14FTq
	OSCd0SAo0aCdWLZl4JXXk8OneqoTK9bbIWT6lQGY7+8csrHSq1nCu2DtJC68MHHwGAcDDeY3fcYjr
	DjY/0HZIiwvsrY/jM/d3nObt89JIfWOn6t2L9MW7QfY3WFP0aTatDnKmYjIBZV7yboKmkQutxeo4g
	PbA8paIExPLfMwu8dOEu/4DX0eKY9AsOe/wLwWehosw5pglgpQuzxnGCgAU2FgkSH5dy0YJZUmu1T
	1rs+DbSMsh4yNqeS+y1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGVG6-0007Mj-Up; Fri, 04 Oct 2019 21:37:06 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGVG1-0007MS-0o
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 21:37:02 +0000
Received: by mail-lf1-x144.google.com with SMTP id w67so5454758lff.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 14:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ce3x7KSH0pYsuXm37iytKyn2HOMPOAXSnbAQ/QFaPBo=;
 b=xk9x5ffabqWz4gnsopezWJWtbhnfmkRmyaoteqL0Tb3I0kpN2/0ShNyHmkYndvZ7td
 j2frhivq4Mtp7ruUowc8Hm3Bm/OLGVdXO0NBH4Yrzrv7UQYtxITwYq3kt+t3Fv0XcY87
 ljlrSQ05DQe9wts+tAnYm94cF4NUcOwrjMiIX1uBPL3tYreQukjNLl5naQSsJtb5+Trz
 k5NBV3JBFdekRw8Ma6GEh1gZoXAXm7pDwmso7Yi3PkkByEut/1c0djfEKHMJ1l9REunq
 N0wcHIizgSLdWl4VbUyXoL6Mf9zeMOdPp0AwmRPaBSps+FZwsRBZeSq90WGUVbB7mnQN
 IMug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ce3x7KSH0pYsuXm37iytKyn2HOMPOAXSnbAQ/QFaPBo=;
 b=c3F2TPGEBHrTwJicYtXFdtaYJ9dbpNVgsoS/YXDjB64bsk1KtJvEhQSvZO1DecAXW7
 dYD+kAk1LcP6ICkjn0cKlcY/ypcqdrOEGbFoIFD/l+WLE3fhXH8ke7bAGFmxeUtTTBMp
 72UhshTG/U962bohuqin5/dsETXCX74PLUCJvdeCdJBr0p9Lu3IFI7F7BxAkac0TWU/A
 CLmMGz2O7YAMMBa79aKPPwdqfC+PTkGZKe6pgpRFmnAH5AMsdvwmrYDhQaYIN6hWKmGa
 VLqRfID2nZLVvozXSrFvgZX3O2RMLYY/1uPXnQ7l/tiqh2nIKtzD6mp7fj1Oo+q6Ua47
 daTw==
X-Gm-Message-State: APjAAAUfxwRt6gb/kt/eyJ7euBLN33G3Xk91SlhUh4g2VXz1byLqwF0X
 dncpS35v3GFGlpJ7DvZ80lx7LYjlzgihnqQUozuZAw==
X-Google-Smtp-Source: APXvYqy4xOAHwIaDtkz8jFtwY47sxQ2nokwcrjmKxbf0EZl8xzeuzKeGyjDOtURFQTzmmkuSB5zJlXy15mbRmL0oGYc=
X-Received: by 2002:a19:48c3:: with SMTP id
 v186mr10152902lfa.141.1570225019432; 
 Fri, 04 Oct 2019 14:36:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1569572448.git.baolin.wang@linaro.org>
 <c3070351e137bffd2b4b639fb14b1baa19df5641.1569572448.git.baolin.wang@linaro.org>
In-Reply-To: <c3070351e137bffd2b4b639fb14b1baa19df5641.1569572448.git.baolin.wang@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 4 Oct 2019 23:36:48 +0200
Message-ID: <CACRpkdYNXcL3StU4sX2Yyvz5zH1RFr5E6mvAm+1dJFOC5ophxg@mail.gmail.com>
Subject: Re: [PATCH 2/3] hwspinlock: u8500_hsem: Use devm_kzalloc() to
 allocate memory
To: Baolin Wang <baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_143701_063636_DC3C25EC 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, linux-remoteproc@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 10:28 AM Baolin Wang <baolin.wang@linaro.org> wrote:

> Use devm_kzalloc() to allocate memory.
>
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

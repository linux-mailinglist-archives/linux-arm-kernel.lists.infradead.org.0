Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849B08847B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 23:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRcEr0OjcJ6bNd58Oc2ai3e+PhygAi/IDUWiNoULZlM=; b=r+SBDnIsARcRFn
	R76p10cOIOGvezI3aid/heMdmN1L9m5mphhLAuvpKHSNuaG1PNfaddAEyPs3n8CYUrZ4RtY2liG64
	6Vh2dUqiGsrgqnf7ugAiWCJFoLm1vpgPkkrJvxsJvtVuEB9C3Ql78TZsA4zkOfYMF5o0G8bmc4p2W
	7b19AZ0wpN5gBHBhpeU2Dxb3lVYQ+noakbWla54d/PIfUqZTVl5Xs85RvqQZZzJ09znRc5sbihXgO
	8mbW0EAtamq0hpBVQ55TC2zsiEOKtgef+UxLqwk7jfImFuGx6ehDFdBHCK/ISHdKTuvrTWMvSPhVb
	VbVpPhVHk11O10lZvMrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwCGh-0002ka-Ss; Fri, 09 Aug 2019 21:17:47 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwCGa-0002jo-4s
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 21:17:41 +0000
Received: by mail-lj1-x241.google.com with SMTP id v24so93456427ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 14:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a6qcKD1aVaygupbagJQvs2szHppirdYUK1GjYON7+Wc=;
 b=PZAf+XDThboVQRyYZztPO0KbXTs1zesXPlhPtOdK0cxWUGJAax/ZcgrlVtr+Flu12b
 LM63vttNkoeT5Zskzk7N+8pLvqMd4TuogzXoQ2gjJk1vVQfgsxf3f9vx0Q2iLXCcEOj0
 jvveAaMqqpP2Aa/Eyw+wy7Ba4XmwDB4MEXCmg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a6qcKD1aVaygupbagJQvs2szHppirdYUK1GjYON7+Wc=;
 b=CMOtgUOQhAxohzSmzlpJBP2zFYp422gv/LJNydD8Oq5UBNrZTKmGt1VuwrMPrqEzzK
 qrfGDVT0yLCbtK/afSU6sWA6GlvO4WRzXy3Xbu0gyNRPvovdvtbvwxPPvunyc2QrI96U
 SoRUq/kqM+KjiuEbk+kffr8kR0kwQCbgQGV/ub/q5duHJsJoEit3l3E13ZShwN414fgP
 pLQZWfLnbbrkuQZyipeY1lak+8ZkS0Ard7VUjKKihZ37W09vhlLwVVKkiPjpqDR8ynzB
 IaoJCnCEoYAqVx5bg4maj4qjkFkmwgLy+t0ljJR9guZA/ZQqI/4mlGnotaJocREcj2i7
 Dx6Q==
X-Gm-Message-State: APjAAAWiQsMQCX3bv3L91DXpdx37Ttkv+prjnevzdl/MtCPzLlsngu4M
 gVZv7mJTZYl1pn3StzJi/irZWsONVoE=
X-Google-Smtp-Source: APXvYqx1m2fcMooQ96FZWVuL+thI3K21aqXxqB1HZDu+OYSQsYNzCPsRj2yYp9x0GjaF23R7Gt8AJA==
X-Received: by 2002:a2e:3a13:: with SMTP id h19mr12316052lja.220.1565385456302; 
 Fri, 09 Aug 2019 14:17:36 -0700 (PDT)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com.
 [209.85.167.50])
 by smtp.gmail.com with ESMTPSA id u24sm5546514lfc.35.2019.08.09.14.17.35
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 14:17:35 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id p197so70435997lfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 14:17:35 -0700 (PDT)
X-Received: by 2002:a19:110:: with SMTP id 16mr14160555lfb.63.1565385454814;
 Fri, 09 Aug 2019 14:17:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190809121325.8138-1-georgi.djakov@linaro.org>
 <20190809121325.8138-2-georgi.djakov@linaro.org>
In-Reply-To: <20190809121325.8138-2-georgi.djakov@linaro.org>
From: Evan Green <evgreen@chromium.org>
Date: Fri, 9 Aug 2019 14:16:58 -0700
X-Gmail-Original-Message-ID: <CAE=gft4mkz=rhmC7p903UuAhzG2obaST+ZTecOfmDFKbpgSTpg@mail.gmail.com>
Message-ID: <CAE=gft4mkz=rhmC7p903UuAhzG2obaST+ZTecOfmDFKbpgSTpg@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] interconnect: Add support for path tags
To: Georgi Djakov <georgi.djakov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_141740_215611_E61D75A5 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, Sean Sweeney <seansw@qti.qualcomm.com>,
 LKML <linux-kernel@vger.kernel.org>, David Dai <daidavid1@codeaurora.org>,
 Doug Anderson <dianders@chromium.org>, amit.kucheria@linaro.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 5:13 AM Georgi Djakov <georgi.djakov@linaro.org> wrote:
>
> Consumers may have use cases with different bandwidth requirements based
> on the system or driver state. The consumer driver can append a specific
> tag to the path and pass this information to the interconnect platform
> driver to do the aggregation based on this state.
>
> Introduce icc_set_tag() function that will allow the consumers to append
> an optional tag to each path. The aggregation of these tagged paths is
> platform specific.
>
> Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>

Reviewed-by: Evan Green <evgreen@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

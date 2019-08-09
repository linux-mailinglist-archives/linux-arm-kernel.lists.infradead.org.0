Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3FD8847D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 23:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7ehyuI1HHTCCWmMaomKgrtH/uR0Fj9MShsRh+Ct70s=; b=tNWU2KIHpq/+P9
	XUXuFmxHhstE9QguVd9Y0910KKrPpEoUXFpJbLg1iBUNi86S2H4CAc2ntD9WTMrjpC8VP9rRmSMdv
	q3rZUFpGB8y/+m3++ZQEfqmikgBThbdQsd7Qbhz2QetU2YptThw35HBVOD3DObryAA/ZFBgGU53gK
	/E8xRKsX7k4in7c3IYuMI6gnQK1BQSjGgI5aDDWxnFjZetMhaOD7maS2xAvyCRJm1iG01mfIONbM0
	HXWBDpmJlTXJQSeJ3Bj+RrBaLTfFel4WgG3M6KyyusaclvXoeNxkhwld1RXnw2HlZCmtq0PwkqSrv
	eE1wgYtTFup0bl8Af1tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwCH1-0002xt-9n; Fri, 09 Aug 2019 21:18:07 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwCGr-0002wS-Ms
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 21:17:58 +0000
Received: by mail-lj1-x241.google.com with SMTP id t3so4745649ljj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 14:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y4vLpkUXGaCx5ksGKXq1B6fru5dxWZeG1Id+VcyLndE=;
 b=G54KRPbppyCf6lOgHptflnWoJgyVEK93H+cXO/vp8LfwGrelRzgN5+IYoCLqXUrfYO
 X/Z645f3sLIDye0s3bOMNqrnMltaBkTAyYjneZ6d8DcT9/YcwkbfnK/Nth/KaLZbh+2/
 SYW0DZALxCSJQavegwiXuKNfFYGJX1d3/zt9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y4vLpkUXGaCx5ksGKXq1B6fru5dxWZeG1Id+VcyLndE=;
 b=nRihaXFC1A25Y+V7tjGrAXWNUbyWFSXQvrhrG5Rp47Y784rGte7F+JWNLHY/mdb79B
 5jMxa+HDjbU0CG+86tcr+8FRfRVdgQyE31o72EB61BpwoX9OMrV3YsB5E/GI8GYOrKoy
 9R0iBQecBVilX4IrPP4ZxFb4AHDl5+thVbH5rbAA1HQXQRQnqw7qHL/6bM5tnoDygeGQ
 VrY1DzWesBpRai93YrPgQ0apEbXwaU6srK5PRIX/4noXdhrcQnEXjTGM1gSinHnajQ6z
 BPDAspyc3ECVHHSwbx6rSXqK3vZZ1gPH7VGuV9RYTV1FjUlitl64t0gTKaoIWfc4qRWk
 1xaQ==
X-Gm-Message-State: APjAAAWyxgApAjNigwZnRNbmuxQoypHqQtk6b0K+8X3/9AWu9NwQQ0/q
 ufNlfoR7cJ3iz8bA5RjDoP7nd50M9hs=
X-Google-Smtp-Source: APXvYqyLquPDmFOUSYjd+qm/SOTelpD9Twri2mY8dn43fYAD69atD251Jk77zY36AV5nV25LuZS8eA==
X-Received: by 2002:a2e:5b5b:: with SMTP id p88mr11978866ljb.192.1565385476082; 
 Fri, 09 Aug 2019 14:17:56 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com.
 [209.85.208.170])
 by smtp.gmail.com with ESMTPSA id v8sm975391lfn.79.2019.08.09.14.17.55
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 14:17:55 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id m8so59688341lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 14:17:55 -0700 (PDT)
X-Received: by 2002:a2e:93c8:: with SMTP id p8mr12301485ljh.6.1565385474677;
 Fri, 09 Aug 2019 14:17:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190809121325.8138-1-georgi.djakov@linaro.org>
 <20190809121325.8138-3-georgi.djakov@linaro.org>
In-Reply-To: <20190809121325.8138-3-georgi.djakov@linaro.org>
From: Evan Green <evgreen@chromium.org>
Date: Fri, 9 Aug 2019 14:17:18 -0700
X-Gmail-Original-Message-ID: <CAE=gft5JD9QuH3cZpPX=4eJMjbyPi8nes1--6qcsKdb1sw_rNw@mail.gmail.com>
Message-ID: <CAE=gft5JD9QuH3cZpPX=4eJMjbyPi8nes1--6qcsKdb1sw_rNw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] interconnect: Add pre_aggregate() callback
To: Georgi Djakov <georgi.djakov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_141757_747010_C0532507 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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
> Introduce an optional callback in interconnect provider drivers. It can be
> used for implementing actions, that need to be executed before the actual
> aggregation of the bandwidth requests has started.
>
> The benefit of this for now is that it will significantly simplify the code
> in provider drivers.
>
> Suggested-by: Evan Green <evgreen@chromium.org>
> Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>

Reviewed-by: Evan Green <evgreen@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

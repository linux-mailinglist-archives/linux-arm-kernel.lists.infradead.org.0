Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B60B927729
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqGppohCb+f7ndeZvyyoh9K3hH5FacxpO2j9u2H4Lw4=; b=O2P9kHIOh7m6h0
	Xz/OghBEDXmNqR/WfdsSKhTFVKrQEttvmaL6gMw0NEV7f9MDWxDABSmfjXeqAMJVCRWK5Rmj0hhdC
	8Hc8w0026ZKlP44p7JVZ6hEI7CbC5tG9aUWgk8pXEC8qvnSplxuip6aZ0Hjf9XQGzbsl94v7qXi1X
	P5kkgBWvPzehOygPcW8oDSJMKDPLPsTMdNoeHSyi7kcoGviYUksZrzrh50bGzDQM2op3cH/zCY/tx
	8kBvWSwZ29GmejNaRe1F1i2WG4SHrh19fe+zTRMndIGSvPAZ8wilQMc770rdka0O9HrxLw98Sy0sV
	xb+RtHUy79kcIxMkizyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiIK-0007sK-3J; Thu, 23 May 2019 07:37:44 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiIC-0007qc-6I
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 07:37:37 +0000
Received: by mail-lf1-x144.google.com with SMTP id v18so3654064lfi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 00:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cx8kg7WymCjtyRcPfqK4zjuEJ4lhy55B2Gkin5DJtFU=;
 b=fR8RE84n1odppI3p20OTG7XaGgUYqo6kXCldCRW8or5Z3hIBeoEMGNKMB5ZPtdNJk/
 mgByEQfAV30URjnhve0FLDZCf3VjYeJTLxrXOtpebu/WgWJa95xV6q/bzJIWfQu5kAM/
 lb+2YJRaFCyI9zlUIgxWbqOGBQ8GH9WL7wLHOn/TeVF16dYN8cUyFpGCJTNx4/m3BA6y
 WhJFolJShRdIpJ8lYYTZrjQzkt4A0fSuH6IOy7MSadTiKYexx/vuh+O5dw6MVcnvh0iX
 6FmVEvoLxExnr+FvKCG/9HFdK3pBLFR3kjTdxjnhyNRcvh8Flzh1gs9FGLySsBOjgh/R
 +vAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cx8kg7WymCjtyRcPfqK4zjuEJ4lhy55B2Gkin5DJtFU=;
 b=VVB2yF5WupQj/dYprt687px2cEIWi6xTpY66SgAYhWOjaJ20wpbuohLwXVQZ0I43ut
 mgscW0o1uYZKXn1YDR2dhqpHMwiAk8DPytS7sQO5heuA27ynxZnPuxEKOr+ghao1a4vS
 YolSInk6KHSjnoVR4HP5sTXL+E3reKqXHEM8cDSvkoEcgMCXBEVv8gElVUIT4+ed6ic2
 A1/wRHEfquSujCpQIzc85AEygwd/oqmqm4QRekmNV+owfqySUTBrGdMTaHHwCNKPpnCx
 3a7Al/2HhQTi7avApON6y6MZoENSz8h/Pv/eLdyLQ3qwvwHqGhmmaM64tC0l9XGJjktU
 Imjg==
X-Gm-Message-State: APjAAAUfEhlBquDIfVT8uxi1TXvn7OPGRr9mZ0EBUVXl5sFrJ3HEoAAj
 jJmDDskmxRgW4EjQLbMOw/vlKVGGNQGYjLQwjUQ8wA==
X-Google-Smtp-Source: APXvYqyBRsqXPk9Dhzbeg2Oz3JZyzA3NjwECl9TBODwCZZrOK9/RFjOdjOlwiSIFYgEUEDYHs19a86bibzY+Aklnf3E=
X-Received: by 2002:ac2:5935:: with SMTP id v21mr4885287lfi.117.1558597053613; 
 Thu, 23 May 2019 00:37:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190522152925.12419-1-benjamin.gaignard@st.com>
In-Reply-To: <20190522152925.12419-1-benjamin.gaignard@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 23 May 2019 09:37:22 +0200
Message-ID: <CACRpkdYOS0UrXPtJb0--4RW6QM_Xq8wb=9Gj5X9fk7JWCgpWfQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] Allow pinctrl framework to create links
To: Benjamin Gaignard <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_003736_262460_32C29339 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin!

On Wed, May 22, 2019 at 5:29 PM Benjamin Gaignard
<benjamin.gaignard@st.com> wrote:

> Some pin controllers may need to ensure suspend/resume calls ordering between
> themselves and their clients.
> That is the case for STMFX (an I2C GPIO expender) which need to be suspended
> after all it clients to let them call pinctrl_pm_select_sleep_state() before
> perform it own suspend function. It is the same problem for resume but in
> reverse order.
>
> This series allow to let pinctrl core knows if a controller would like to
> create link between itself and it client by setting create_link to true.

I changed the name of the boolt to "link_consumers" and applied!

I will send patches for all other pin controllers that are I2C or other
slow bus based, as they will definately need this. Let's see what
happens!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

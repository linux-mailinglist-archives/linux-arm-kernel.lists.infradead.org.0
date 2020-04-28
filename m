Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B750B1BC15F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYAhFHJ2VxQPRgG2wZh64gLHp963b5b4xopRbUoWMy4=; b=AO+nGmt/k2gQJw
	/W1aQM3GcclhHAWqmq4eCJwnTapxg6Fs8cr+psY3NynJfnimhf4jMybNkWqwXM40X1aUV6hZmtD4B
	xJS1YTvKqWMxCkk/hQ7OCX/9r/funrP5ThXIWKONEr78z9BIDvm7Xu6zVYCJVaaPICM/41f3FmB9z
	/B6lPE+7lRzWQOXbGxV87XlOFBatx4vkhkQcB3+ZcH8TdaxGnBBG2kl5qZOj5eLScuhCJ735+Rmcf
	AyMfIRHBEMAg6xImrx3HOnJ2V/B2nlWW4OkBQN30M+CgxdS4VeFKIXLATsU5/udflRC4qgduTbJOb
	RVz0cPWXCtgQ16wIqpJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRHw-0005F0-Bj; Tue, 28 Apr 2020 14:32:44 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRHh-0005Dk-3W
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:32:30 +0000
Received: by mail-lj1-x243.google.com with SMTP id j3so21659317ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 07:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=psr7yNqTXqMfQvqVzYJ3WgK/XrorFzoihdkLU14qe3w=;
 b=GNiAeQhgB/N+m40azYZMqkMYXjkfb7QkJq/BtD6t0WwK9uLf8zfINMclqp7OsmxGDZ
 H7p5uQXQhNAIxz/85JMYPZgfGGWVucEvqeAs0Vm//oqQLmsZsGxg+GrHGXMbCtJ01BRj
 10tN2AYH7R6BQlgRnqwLhnqCu55YUoKgD/shuGy6qCrkfLGuwBraErTOfjk3qO2zNy74
 UYWFVk7AFpbRGXfapyYzscgE4U207W4wdvXzgCVEC3UCuupa+aZpO6q2HtqwrDmZInO0
 DurvuXNHk81MnOMb/bQv4ZwbRpwTaeQG0pHbo1Fb33CGAWUjuY7RnO68aYP5eZterWHO
 SaIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=psr7yNqTXqMfQvqVzYJ3WgK/XrorFzoihdkLU14qe3w=;
 b=mhqDQvtLP6MijxVAsWR4F7JWf/XAfGIQgMfimX0aPfEddJRlsfpqcgZaYax+q5Sm6J
 2cBNnaKwOeh7Vl0XIwtter1AVLOQ2SEVUTngiBn9xOT5uu9lB2w1vl0QDdO4VEr87607
 H5Sha1jEf8/AA5glWxW0qgUsAaPU90066CKciMcBYqGe3i+9MctQe2RMMYhrVmUQP4jB
 1JVW9qjnRG/GqPtzsNZi7YDyoKme2no7wZUdEH44ey81dHZ2VTYnvuIkaMzjFyRhEGxR
 zv7rlt4WG8EMG5XIiqaNOF0eJ8LAyDT7zzRBFF28ozlDAN3UR8EDWQrOnMGjBt5X5ByC
 NJLA==
X-Gm-Message-State: AGi0PuZW34b3jYpl+RaIzsdp8Q7sz+ymSFbH2WpuTnWryCjb+PUiwiZU
 MjY8XhiD+/s7OB7C7ebJxJFayIytSUI6co+puhG3Dg==
X-Google-Smtp-Source: APiQypKVikJwVUY4aCnhdxfj2r5hZ+MavanhuJYX2Qu/0kL47XqZliyypaH3vT3ucDc/5Fb1DO9yg2SDlr/F5VKH+JE=
X-Received: by 2002:a2e:8805:: with SMTP id x5mr18610567ljh.223.1588084347589; 
 Tue, 28 Apr 2020 07:32:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200420134800.31604-1-benjamin.gaignard@st.com>
 <20200420134800.31604-2-benjamin.gaignard@st.com>
 <CACRpkdatGwWyruTLC=+BUtnunvqyxnXAYDhcHqy26oeud8Bs1w@mail.gmail.com>
 <13b16e13-690b-ad3f-a800-28c7805cbb96@st.com>
In-Reply-To: <13b16e13-690b-ad3f-a800-28c7805cbb96@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Apr 2020 16:32:16 +0200
Message-ID: <CACRpkdYLxX-vYypC=9xxuWRQ43v-xm6=LC1shdC2ciH3BtxsYQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: bus: Add firewall bindings
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_073229_154042_9365B01A 
X-CRM114-Status: GOOD (  10.03  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Loic PALLARDY <loic.pallardy@st.com>, Greg KH <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 3:13 PM Benjamin GAIGNARD
<benjamin.gaignard@st.com> wrote:

> Does the following description sound good for you:
> Firewall properties provide the possible firewall bus controller
> configurations for a device.
> Bus firewall controllers are typically used to control if a hardware
> block can perform read or write operations on bus.
> The contents of the firewall bus configuration properties are defined by
> the binding for the individual firewall controller device.
> The first configuration 'firewall-0' or the one named 'default' is
> applied before probing the device itself.

Looks good to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
with this added.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

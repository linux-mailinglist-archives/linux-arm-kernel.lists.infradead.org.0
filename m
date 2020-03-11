Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A26E181CB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 16:45:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CE69dY+NzqVvFoxUCxWBEwfOVXay0njC/p2AHrKspKE=; b=jussam7LTQ8VoU
	cjIRtIEftqvrKZTIzFEln31ly7rq8NZu9DXgFse5I9SJA0p4qf4LsMk4h9K6nPtgWYJCJ57O/TLYx
	I2gWC+QidhRYjKCRps3MbYMdQ5h6jpSWH/W41INQ+Byw2npKFVcKyJuvzE+l0JBWuyGiEI1RuC4Gu
	V4sfv5Knvwzn15Xr7JCs+NdOH6nGmqK0ds2aBhQ1YSyiMiUlv/Ni631Fv470zvkVo5awYETCMpt03
	IF71dhbwqnwp7fSZ8I/EtrnWkIoae7Z4mmkwiGvpqhwkLtlDXBB3Nq4LFstDhHswtPcU2clL6lTOe
	jK/FOLTJDcTHmWtyb1Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3Y5-0006kU-Nv; Wed, 11 Mar 2020 15:45:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3XY-0005Eb-DF
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 15:45:01 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9ACF020757
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 15:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583941499;
 bh=PFGUByZEZTBls3DOx4QmCSCySBxN4HHWWP3hytIxz6k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=B933aFpcNlMJxmS8HIBv1ozND2nqR1JpFud+7CWKxeDc9Iy0XBV44M5fNbDRY5Xl9
 vm3dG6mVkT9Yg6CMQ7i8ect5XDgIYYnz1EaF0Avd4vGhfg4PsJ48QSaZ9BkQyfU3O4
 jSMb0T8qX71Ap4tF8QRvB6t/NL5+pK8ob/tWNIUY=
Received: by mail-qk1-f174.google.com with SMTP id q18so2478934qki.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 08:44:59 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0iwF1b/F9KI+9QoAZZcWVjFFNfvxSMTlEnzW9nrwafAM8pHG9L
 fOdasd/B91XBw+5vGO1hM7j9Zp7X6nr9O0YroA==
X-Google-Smtp-Source: ADFU+vuw15q6epFZCXVJuZ1Xg31IOj2uW3MXifAIuvdbqLoaajvp1prFnelurSmWkqVzjoRj7mM7gpt70hmkQJ36bhw=
X-Received: by 2002:ae9:f205:: with SMTP id m5mr3442629qkg.152.1583941498611; 
 Wed, 11 Mar 2020 08:44:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200117170352.16040-1-olivier.moysan@st.com>
 <20200121220022.GA12737@bogus>
 <6a49bf6c-8851-a65c-5606-563776e07c08@st.com>
In-Reply-To: <6a49bf6c-8851-a65c-5606-563776e07c08@st.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 11 Mar 2020 10:44:45 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKGy6Ec57RC_N-KZfKgGij4nn-BEdNQqXCd9dH_yPY6ew@mail.gmail.com>
Message-ID: <CAL_JsqKGy6Ec57RC_N-KZfKgGij4nn-BEdNQqXCd9dH_yPY6ew@mail.gmail.com>
Subject: Re: [PATCH v3] ASoC: dt-bindings: stm32: convert spdfirx to
 json-schema
To: Olivier MOYSAN <olivier.moysan@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_084500_501990_E696B058 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tiwai@suse.com" <tiwai@suse.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "perex@perex.cz" <perex@perex.cz>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 22, 2020 at 3:20 AM Olivier MOYSAN <olivier.moysan@st.com> wrote:
>
> Hi Rob,
>
> I did not report your reviewed-by tag, as I have made a extra change in v2.
> This change is related to dmas property reported in v2 change log.
> Sorry, this extra change was indeed not clearly highlighted in log comments.

Indeed you did mention it, I just missed it. Anyways, it's a minor
change and my R-by still stands.

I'd resend this to make sure it's in Mark's inbox again.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

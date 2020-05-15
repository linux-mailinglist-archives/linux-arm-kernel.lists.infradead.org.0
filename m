Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F071D4C9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sW6oOPr6N+btJThipKst7cIcMgKmHNd9loQt9S9sWOI=; b=pcxdHcdvhwKQDl
	duzWbvP21grPKuHaaDtmMhEySbAoBWwLMCe4Ln+/mh5QZlXrd2yOWirKEE+XzYdEw05XWv7PqUTGR
	AJOer0hw0M9JCD9ALlfNSukFaul/Gaobcg9EUzukP0CjvLDJ+Bi9xSZ6O5eJmCa6sVcq6lYnEsQQG
	swg68DjtyXKUmkpKUAiAt3n7WIZ3nbHziqxs/mvZIJ7vWH5MBJ6FesA1xcRK3MlMFQC8EtFC24f8n
	pmq5KzqdwSB8+GMC9iQ9SiAzVtpxAd8xs6CkeorNm2wybUlfyCjX5158xcpi/hMrOXaDBtUtm6mR/
	cMaEpowgooCiEZKNqVNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYXl-0000IF-9x; Fri, 15 May 2020 11:30:21 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYXV-0007HJ-KZ
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:30:09 +0000
Received: by mail-vs1-xe42.google.com with SMTP id o26so988513vsr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 04:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ktIgdpUDXYhr4tMpXpfk9fbt7teNm/a/V8MPQX7Saw=;
 b=xIJ+hGvMWZuCj0lEQr7vds9EGl/GHMtEkdLIVHntzKQB8496/Bha7rPIecLIhwPb5t
 m2mSTGasqwnlpazDhvN9sXnlah6pTH59aYEsHJK1GW9/fTd/5YjxJcj4LW3K120wd8v9
 h1Jq6eTt4OgYYiGzWzEBxhkD8GkbomSpd560cc44QKUQnufiCtIml1iSoMnc7jtYfh8j
 /U2vHQvnTIB5/vSG9aYLwsQiGywN6pvQiqKVPk/Lk75As7jsgqhEaQIOKrQNMchhIdrW
 seEMvXV2QmYcReh7TgBdaR6PDUic47/Cl/a4e8flA6hT6XLOA7qjGOtbhRhpp/rYUgVp
 ZoQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ktIgdpUDXYhr4tMpXpfk9fbt7teNm/a/V8MPQX7Saw=;
 b=MDqmfmq75r87fwlrTdxAbbz+jegnBTFZdjQ0N1OzruMWv6u/9vgBTAQq42YJPr+mMa
 /cfG/na6HlL+h+nEFZS7nc3k/fU3Fj7GRxwsleNBO5QuPpDJc0LM4ua7rU9cQZtRBUPq
 1giVNhaXCPBN5/yXLR1lq8MUbYSVn+7q8zqUQKDf58/fo+TRm5KGVTdqGXKlbZ/7dEYq
 Jel+9RY2g366L8jn63DIAxENZnqw4zb0N3YnK55m7HdQoVWoNzArX7NL5EtgcHY/Ht0Z
 PwLNqKdFqMEvJ3cikg+5D/gw/ziK0K6+RogkNdTT4TkxADiVhxC74vp3sQt63c9pv1cL
 uxhQ==
X-Gm-Message-State: AOAM530EC8zPi43I2C4KDBFj7K5xhouraLx9ejlKuXVnf9b7vX/UNunN
 OUDHdU4/2slBiLnKd/rlMmRFOhWiwxirddezVtuLow==
X-Google-Smtp-Source: ABdhPJy4kGs+w/U4e8EWAdRJDCldcb3ykamHfM9EW2/KxvxKbn2MgVc1eDswBiEaeH6vj6BYrIipGHHI3IorCHhMZTk=
X-Received: by 2002:a05:6102:242:: with SMTP id
 a2mr2041840vsq.200.1589542204535; 
 Fri, 15 May 2020 04:30:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200511133346.21706-1-ulf.hansson@linaro.org>
 <20200514142015.GA23401@bogus>
 <CAPDyKFoVo8L7eiGdEVNYR2DY7cszDuLkmX8O_SfyUKh73pbpMQ@mail.gmail.com>
 <20200514172816.GA42669@bogus>
 <CAPDyKFrdrOnxFHaAR=cmMi2VfSudyHdjZ7vRZKhTQtepdkiXug@mail.gmail.com>
 <20200515102255.GA25927@bogus>
In-Reply-To: <20200515102255.GA25927@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 15 May 2020 13:29:27 +0200
Message-ID: <CAPDyKFrsfLExZHvNrJgqsJj8TTzj9jg5v=jEowBTdi26uyjZXg@mail.gmail.com>
Subject: Re: [PATCH] cpuidle: psci: Fixup execution order when entering a
 domain idle state
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_043005_701858_54C381EC 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 May 2020 at 12:23, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, May 14, 2020 at 09:11:50PM +0200, Ulf Hansson wrote:
> >
> > No worries, thanks for reviewing.
> >
>
> You are welcome.
>
> > That said, are you fine with Rafel queuing this then?
> >
>
> I am fine with that. However I told if you need fixes tags as there are
> no users of the notification yet in the kernel. Though this is trivial,
> but do we need this backported to stable kernel. I don't have strong
> opinion and leave it to you and Rafael.

I wanted to add the fixes tag, to make it obvious that there is an
error being fixed.

On the other hand, no need to tag this for stable, nor to need to send
it as fix for 5.7,

>
> Acked-by: Sudeep Holla <sudeep.holla@arm.com>

Thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FC05D889
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 02:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vviveou72P9VidNbS8mp1wJ1aoRR9qHfot5CvnO9dgQ=; b=bTa6nH62y3Exe/
	h3xEaGiaENNur+DagZjrbEsS3REfuZol1+yImPmn/AFGar4geBQLkFrsSfoZ+XW+H2/+bnDZdXbuX
	2QABoVKF0afshKcfJRRjV+3WqlKiWhjchuniSrkKLxHJZdePR8kw6G5M7HgiHy26Fhjifv0vUlPFJ
	QBe5PD5JPrQ6VzciabXbODqirzbcefWkDkHIkogHNHej2l56DlIcyKDgmEpWd/JDyyDX33sBF1rvW
	ASOgkNaPHRyhVO2XJyRVSE4x/NV7tyZ907y3lnQZBjdEMCuEWSeh9ECUZpAWofmzGuNQUYPRJU/nf
	zRzl+S/c0ZoEKn0x8Tlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSip-0001zg-Al; Wed, 03 Jul 2019 00:02:03 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSiZ-0001y2-D4; Wed, 03 Jul 2019 00:01:48 +0000
Received: by mail-oi1-x241.google.com with SMTP id v186so513013oie.5;
 Tue, 02 Jul 2019 17:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=obK8pqGpp6ppUzwFxaYhNaIwmhJYhgnzTyLxnEMEbaE=;
 b=Lgk8HxN2TeaySbNH6ob4UW9Y1FU9ezn/XZX87/sUbY5sGJwYYW09z7LGrLbcskZrtF
 h+DBGDabYukmYv22IrZ+49itPNoy9cnyYJwXzXiW6ASg/lvgOvgV9xy8WSmeF0czH39O
 EMhCzMJeDIXushtAdpqBdCjnDi4NMWsS0JZhxKSR2ci7IHbGYrw9WaE3uF7v9RYIQGF8
 ll2bePKQibxC4pnFOZQyZC/NqU6LO7Ln0PNYeNQN9TP1H3SQfRxU8G0AJF4w0TFfuyph
 rybCk3984T+iyvQRkaFh2kGxXryzzYsKtkAkcoIxKP07Jik8Z4QS54FQbbJbr97+pmZH
 aDFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=obK8pqGpp6ppUzwFxaYhNaIwmhJYhgnzTyLxnEMEbaE=;
 b=OTlQYeIAwdgXVKTIEkArDZi5K1JF/XOU3kcTGpAW9E1OoYIfKXX8jhH+b2lJRW2+hc
 bO0f6MVqGaR5pmw8TGs2NjudTJ2lC7KBNSUu0dSCDI9zZaeIX8vOhJ16n1UrQFDQKgjK
 qc8tv3vh/f2u13uMjnPZTkiw7SzrSqZp/X3qIaQuEPjer6uT3PUUfwit7B3hhbQIV3uU
 1TlLJb+UpkaaFw3/lv/e8TI9TB7rWQTlh0oKvD/Bu8khRikr4gbUQM4yrc3ZfOynYhfB
 u4evORWjaA8pXg9d7QC0wNdu2zql6Xkylwn8cg6GdruPRxbiGANbmE+AIsTbcSbRdVBi
 tjNg==
X-Gm-Message-State: APjAAAVWhpZJayq/XKTvH1cTF2Bnm1i1u5yhmiI4/D/+kybMILX0JYb7
 /VekDBiKpYdqM8FFZ8BiEdb8knzIpDXVt9fVCOc=
X-Google-Smtp-Source: APXvYqzsU+VOw/pRzHZkbj7mE4hstsvnVzXhxSZSDwcHEbGK6duR2ysmseQ7VOXaagjXgGDyInbFMOecV+o3mcRZ56Y=
X-Received: by 2002:aca:4306:: with SMTP id q6mr4781191oia.39.1562112106480;
 Tue, 02 Jul 2019 17:01:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190701104705.18271-1-narmstrong@baylibre.com>
 <20190701104705.18271-6-narmstrong@baylibre.com>
In-Reply-To: <20190701104705.18271-6-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 02:01:35 +0200
Message-ID: <CAFBinCBTbCf=haP=YmkmtvAxD6hgq32LPMg=OkRF3P_p+okqeQ@mail.gmail.com>
Subject: Re: [RFC 05/11] dt-bindings: soc: amlogic: clk-measure: Add SM1
 compatible
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_170147_440291_6F738992 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 1, 2019 at 12:49 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add the Amlogic SM1 Compatible for the clk-measurer IP.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

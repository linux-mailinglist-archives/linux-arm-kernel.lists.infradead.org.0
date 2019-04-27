Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3DFB485
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 22:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08UtR9hNjHBKq4xeWsL8H6rdZWbFJasixmgXG7TW048=; b=NajcCmYW9KNNYJ
	zFHe7H0BNmphQ5pzm2cZ+dG0EiT1ywGqUOnFZrPan/Aj3tvJeGsEFBGvZvBeMRAtfy112Blp1qG1s
	wM+ToT5YYRqsX50CAJhua5qWJ98BDL65UgcnLuBL+I8hM991ZCG5NG5BKAJstaZCBrx5ycswuqaNF
	EhyveoelVrg/1MDyOBhV2dHtEjTifqw0lcK45KkNGJ9PN1jOTavo7hwaZA1BhV1PtJtYYkqd3O0d4
	J7xyAt0iys77VJ+ZP4Gnyxq/bot2R3FCPs3wLNgdhVbx7YSys7/OOxkpwEiSqHOd5MF9FVKMWO5jv
	1mUeLFJdUDm7xdeiTmvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKTx8-0004t0-Je; Sat, 27 Apr 2019 20:29:42 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKTwz-0004rl-Bv; Sat, 27 Apr 2019 20:29:34 +0000
Received: by mail-ot1-x343.google.com with SMTP id y22so5546671oto.3;
 Sat, 27 Apr 2019 13:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r+u1Uc4MpTFdNT8VK8aH808CBTf1BtkCYQRBGkAzTTY=;
 b=sb8gi04uP2A7Hfb/6So0ySjafBDIIFKDXroacQDp23Vn5PiHFtIn2MMEMF6GHONT9j
 jt/rYD/pDq+ZMecfDFF+b6wsfC4DAZ+zgTSAPxgmU099C5QKWaBb3NqMGdor2l9KApDa
 oboT/QVqH0Ey/vLTm90zd3LYU/HCe4eQMlM9761oFZUC4M2BZHEtldjbMcKpTs5PL8fG
 9uvPKqnwvYbUc7D569vKwBfxA+9LFqkeLI0iVsY2VyAMhyAtOoiibJvnNCljBFMY3ljc
 H2EQvrN/N2UEWqO4U0XMqPVcNNtxzeodImbEfaQ8QSoPo3babvW1KcsI0teX289hstzE
 96qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r+u1Uc4MpTFdNT8VK8aH808CBTf1BtkCYQRBGkAzTTY=;
 b=mPdRNl3DqA3XqNqs5hFyg+9EM8VhLkfdAq0gUnkEF1CtR9TS02Ia6L7JXQzEgP2BFT
 h+We0i57U48TA3Bgs8EWKgW9iDkw9QvuR8Mt7CorRAnnrfeREC3Rq3ZybOjyufxULPA9
 CFLEhIDBSQ7qyAAaQN6lt/19t4ETzX95+mh4Kma9TkE4HOXfVl0ryrBqR6lPH6EIZ7IN
 M518qIX28I5zHdl1B0SWILYaSVZ0ZctWPlaSO8eGPe0TtmrGB0BPE7L3NfTkHfA1Lj3+
 4wzJkl3R3QB91ktWPwEzM4cD5KyszvqvuscVM/W8dARrcilOmgDXnbwb3HHoa5G1UVa4
 bIvw==
X-Gm-Message-State: APjAAAUjO9hCNkHda3ps8rW0WYLio1d/lg9RlRlegBDXSePhVqKM4slu
 xpdz0FkfGXw4rxKLjto1sonLO2bEVvNyANO3NI0=
X-Google-Smtp-Source: APXvYqw5UxrFzLXn58WC+X6RPPz/t2StYMN+4m/MLVUAkSj0fMjagguxFrik34N/KANpNKFzVvAQAdQJ/qKByAyRehk=
X-Received: by 2002:a9d:5e90:: with SMTP id f16mr31089817otl.86.1556396972638; 
 Sat, 27 Apr 2019 13:29:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190423133646.5705-1-narmstrong@baylibre.com>
 <20190423133646.5705-3-narmstrong@baylibre.com>
In-Reply-To: <20190423133646.5705-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 27 Apr 2019 22:29:21 +0200
Message-ID: <CAFBinCB9WS650JpuyGyjjOE=LNbChOdhAyb+qJMYWGosyMUa=w@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] pwm: meson: Add clock source configuration for
 Meson G12A
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_132933_409093_98841EEA 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org, baylibre-upstreaming@groups.io,
 linux-kernel@vger.kernel.org, thierry.reding@gmail.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 3:37 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> For the PWM controller in the Meson G12A SoC, the EE domain and AO domain
> have different clock sources. This patch tries to describe them in the
> DT compatible data. The two AO PWM controller has different clock source,
> but the first AO controller (A & B) can reuse the AXG parents name.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

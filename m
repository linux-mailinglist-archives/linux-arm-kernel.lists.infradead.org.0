Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5DC96AD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZDkMqdDK7CH2XWfxgtntBlZAccbLVuH+NN4dyKQpog=; b=m+1gjEkhzqrCfu
	H6h3UCXY26zYPzVIDgNFPB00SYXBJv5y6B/8Y2/7qK0wyB2B+i+4zjsxhjrxJkqnOqMTqN3xTTQIT
	qgQDh1YeHV2gX7wkfCX0dcd17uRm1V2na3H//FMHfaLmoWUUSxxizXcLoU5YqEyHbpD/zDzDJECmf
	WGgkSB5apfyLUTQvhz+O/JqHmd2XqHMIbOmmcJPcDqvsXkFlB7xhLv0bW9luT6/+GWvcSMc1zSOb4
	WC+DZOWvLDSMe9nGW9FDpeD45jxgD7dqjinpr5/6Nb0uLVTu9ZHbwLM2VI5oEYD10dwL7yPfMln/9
	nAcO65dHWQY0nXiQkSvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0AxS-00016i-MC; Tue, 20 Aug 2019 20:42:22 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0AxJ-00015Y-Cm; Tue, 20 Aug 2019 20:42:14 +0000
Received: by mail-oi1-x241.google.com with SMTP id g7so5206659oia.8;
 Tue, 20 Aug 2019 13:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VtWPczm67CwBeu0M0TFGverK4/MDIuIxxwNeQ9S1vic=;
 b=E3ArLV08QNk9L8LKJkIYGZl0DVDrokXHwB0vK/zDj9e6nIVu9k5BFrMf+kqHc8h0Pn
 +lvOjcitC6Kd8udiShWwkBPzaeVjGAGlh5ptJav6c0MfzzkQQjxaTgCYdspnmNEs0W/E
 0rVKb1yrsux6dU602RR/AyuRcq+MtuSzIvYWI7UWscpnspsah1vma5T+cT2i667idEi1
 EI6egM+KNFL4qj4kH/BiK0YAnQAdiiFSV59fNHldRTL47sHlxq82rFyWVSGxEgEkiV64
 OlNoQGdRbLG5MvqoK6H6ROBNqZrwJOxuQWncK1e4VuHo6ZhPKaM5KhcKBqGAb+mHOJO2
 HtJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VtWPczm67CwBeu0M0TFGverK4/MDIuIxxwNeQ9S1vic=;
 b=TZJgFQxV95qZGT6+U4oMpLOwYPNYg6a7U94o8LRMh1V/CQXQlS+1HlAE5kmsIUZs3i
 6HCwxz6MNGGRbPhf595fsy5B8eNRwMb1+PeP0PDwX25Y1ZSjQfSKTR7sUp4tNF7+1qWs
 mIH3LirC3ANMLiJ2g+NeIKpJO2MqYYg812OeyBml6lQW6c5dRiu+82GWeIxq8NzO2JnM
 ZfOL0+c4VQtynGGzLmpFPb/BGGbKhH2gk1EVBRG3NCWxu+GykiEhBk9ij9k1qGX4N5oE
 FN7ZDwS02tkZbu74dWmFxC20eS/gLCD60EZWRaye6FFmotvnzy+s/ZdxVIkH7Lv+mMoO
 sXdw==
X-Gm-Message-State: APjAAAW203uUOryd9dSyyo04K2VBgfuEqi80RfZ1VMqE5GKnTFkzrUZw
 s7uKAhzH6akWTrpR6YwTwJrS7ZxloZR/3oivMe8=
X-Google-Smtp-Source: APXvYqzRHZsEZywX6PGgcnI3U8bBt1UQySc3ErcGAntuVNC98xdGIfDMOtYZ9Vh3M4F1lTu7dXuxyT52H7ClOJeIK6I=
X-Received: by 2002:aca:d650:: with SMTP id n77mr1448561oig.129.1566333732518; 
 Tue, 20 Aug 2019 13:42:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190814142918.11636-1-narmstrong@baylibre.com>
 <20190814142918.11636-11-narmstrong@baylibre.com>
In-Reply-To: <20190814142918.11636-11-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 20 Aug 2019 22:42:01 +0200
Message-ID: <CAFBinCB=kMELC94MUQt_n3QagsjNn0YjDfcZ1qk5tghCxjmtJg@mail.gmail.com>
Subject: Re: [PATCH 10/14] arm64: dts: meson-g12a: fix reset controller
 compatible
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_134213_462734_9B33E697 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 4:32 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This fixes the following DT schemas check errors:
> meson-g12a-u200.dt.yaml: reset-controller@1004: compatible:0: 'amlogic,meson-g12a-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']
> meson-g12a-sei510.dt.yaml: reset-controller@1004: compatible:0: 'amlogic,meson-g12a-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']
note to self: reference where the decision against a g12a reset
compatible string was made -> [0]

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>


[0] https://lkml.org/lkml/2019/2/7/358

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

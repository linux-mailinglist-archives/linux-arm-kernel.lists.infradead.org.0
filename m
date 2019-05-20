Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F1324107
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 21:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSei3Kq3gYCPF831XNC5lK1sp8CuT+rkb/xh9MXRNjI=; b=ou5NaoPUFbiK76
	gcf2rG6wi/qMm4E3qpLc4T2mlttnUmytG0s1Y34Jr61ldNJ/RJJTWrSw6J9KW237Pnu7pZm4FglTg
	56l8vQZQ+En3z8x887tzKE8BU2Nk1hPEpK/UHT8cUeTtm7LY8KpC2MXih+6FK76my9crD2ISWbjcZ
	UG6cqd56lmJJU0BEUwNasOGvCmjiiuBvGa1k/U/I+tx9DHNvqBynrNOM45T6fUfW3d7rgImfXB7TS
	+Q0m/LI63lbT7D0HDIhGRPk2tEho4rxVvX1c3l60wnNMFXvVrXshAEJcibrLUPUA3TpKPemoLc5RY
	8nGKWGPFqpEXxHp5R+IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSnoW-0000Wu-VU; Mon, 20 May 2019 19:19:12 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSnoQ-0000W7-Qy; Mon, 20 May 2019 19:19:08 +0000
Received: by mail-ot1-x343.google.com with SMTP id s19so14059930otq.5;
 Mon, 20 May 2019 12:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ILhuswdCRnMUMBRmoi3Za/asPHf+23D/dshJBOh3X34=;
 b=IRgkt9b9zjWY7xSWKf3ivsymx+TC/KfBZhHDWrkSWQqWt6cYLLu0r0mMd+cd1BFYUz
 cK3qTiWLGAVnFU035zQqlNUcbIC17/XLJbfFmd74MeixlEr0o9e3+PtNAAqkTVN7zf2o
 LeX6rTJy6W4L/MtBXIU5piiG5DlQKQnwFsRmpq96AC3IXTiqCTT5EEmqUNMDc7ON2FY2
 tg8M4yNg4Z22Na3rD4AB3Ji5+OWe/fXvUxsy6HQ189KOgw6it7Zdiy7wFbDwJAow9sTk
 NJ/2Czl6OhEa9KaxX5Wd9IWIQaeBy2w5I/VoAChefH6yUqlSfD4Yn2pn4wNHKuo9fkDX
 WCBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ILhuswdCRnMUMBRmoi3Za/asPHf+23D/dshJBOh3X34=;
 b=duOAjIT2z/siBt63CCWahFqNBm75fkZRfWYpegBB4Nh3r6+MN3XZGmKj2xKsZnDGWJ
 zGsVtiBPTlr/KjTWhvUsvXzrqyGBP/4bZ4pKY4mlfNKI5lDXGd2g8avheA/96GS5bWpd
 PB9CwbTUhVtZpF9vESnFAzw4OG5eHeDpy1q1fKpe2MvNFfU1iaQGte3M1eUpwdx5y4Jx
 AAH1un1X47qHx5WMPjI8Iq58cTNGmV01kGkSU3zWKf1pm9OH+hK2es1QlAD1oO0L+G7I
 8m10REXnS9VOihHT3iCdIiiSec4Tr6t6z4QE/Jz5wfPQ8Lq3fVV6cnyoG6uPJNqBPf0p
 W2ZQ==
X-Gm-Message-State: APjAAAXkdhou9jHgJNIE5DbUJEIB11mUeeTLz6w0lI1/Yo/1A7OnzQu5
 MWUsDVfF9CE0ikpXdQ5Oz4oxQbFDraz0RheXBZw=
X-Google-Smtp-Source: APXvYqxOKdOcy+woeXdOWs7xjYQizw+lQeSDcB2n1Zo2IaRnDlaZSguwn9t7esINb/joJB11sVjoVDP/NqKnjOr2KuM=
X-Received: by 2002:a9d:744d:: with SMTP id p13mr26102765otk.96.1558379940532; 
 Mon, 20 May 2019 12:19:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190520140421.30074-1-narmstrong@baylibre.com>
In-Reply-To: <20190520140421.30074-1-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 21:18:49 +0200
Message-ID: <CAFBinCBi_tSMMq9sUuGeTU8-KWDWczwJ=utAv4oARVTNgiDUJw@mail.gmail.com>
Subject: Re: [PATCH] pwm: pwm-meson: update with SPDX Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_121906_870471_BDDB6199 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: linux-pwm@vger.kernel.org, thierry.reding@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 4:04 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

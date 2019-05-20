Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E933D23FAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nhNyRPqPcqisV+hlzcM3VfAYbX4EdVuEnBRP3902gaE=; b=JR+ZVEoYFpze3p
	g79Vqqczsgla0b46sCHlrRnjYC/szx+A6pT9ZXkJA6MeE6Y0DORWuKAPLwjeSoIfXvPzcj/peFIPF
	3DIGSfDNmem5aywVuZqmx8gj9Vpe4+/07sFFVFMLSb8StFi8pBa5WHoAQDto4DzGXKG/ucoYnYXXw
	ilr7ZXJg5zHmEeqr7XVARxs5JE9xEWtSpA/6Z0k9FnXdwT23SYyBY5i8yRgi0j20myyWfH4l6xTVV
	VJ5DlxdO70n7SWCzI8ugdRlReVDyi+FebJQrNvKE+xWWpqL82MWM7pPKOr1rcgDZ5D26zggayC1G8
	ZZY9lseHO0GfobYyOvFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmXH-0000aH-Go; Mon, 20 May 2019 17:57:19 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmWd-0008JC-7q; Mon, 20 May 2019 17:56:50 +0000
Received: by mail-ot1-x342.google.com with SMTP id 66so13861030otq.0;
 Mon, 20 May 2019 10:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VXOvDra3GYVXRTYzoLbL0Bskxi3eAOjAFxHF07MZQNM=;
 b=EUpH/eB1pYTfMfO+mY3w9LF/pI07gQS2S/BwAzn8jJhZYYkufQNJFmSeUUPOcHATOk
 ANW3tVACzDfeQc89sQYGoypgC2L+lEihzU0OdL1r1pBM126FwHLKanSghrMpHidOWHes
 a3QJPM2tSV7el0FLS73YBDRERJCs1tsy/oUz8YLjVvvEczyxmk1hBRwdSov2YjNGBYT4
 zpWGAWlI1vX9fG+jqA5ce4HC++cv0au/u+7WJgiK257qURuPbMwzTdll02qcfjtiz8Tz
 jvn3ydM+QNL6+DvDyXA+trchDxPTkXdx23lV2UJS1tU61E1SVVbCE9VOBola40zsiOkM
 q18g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VXOvDra3GYVXRTYzoLbL0Bskxi3eAOjAFxHF07MZQNM=;
 b=h0DG9LOOK+kHqUD00Mt2RH7pbzI5P0HW2eOCGadvPcvg5vb2xTvOcPDTkNCk38cfEt
 DhA/6ErkutxZMe00G3IFYNhUC68t+jpajBzEVB0yMF7/WBNGtgQwz3KzXeyipidoq5Ti
 iLj8G/or2SXUaiyswbtitCC9BDuaDgRjzU8YtFuTVj6cfsnnMx0aqIhpO7KBauIY8IKN
 Ft4gx4QojXiU37Rf8t64tl++8AWk6K1zf7ImCxEq8zIsiY94MOIAwHBDoSoPIgyFqZ8I
 SKTyaDKSLDym0O3HN3WIDxx/jh6nKcbbt/1thpwHY2JKDzz1elwsvebflqICKoVasoPW
 aaJQ==
X-Gm-Message-State: APjAAAU17dtpFxVVAfTWrJbH0f16tBPf3Zs05kDXMLc7wODhEa8bAfBg
 8B+bRx1A3HJMJ/pqhJvTUTbUpNLpkTWbT/CHQFepKbl+VwQ=
X-Google-Smtp-Source: APXvYqy2RzawdpIc1HHiAmR3XwyoAucu/u340Q0tybzzu1jn/P0w89t3q3knDtRkvNk0w7rRp7KRKkrHEE4DJMJ7UyA=
X-Received: by 2002:a9d:2f08:: with SMTP id h8mr45241893otb.42.1558374998281; 
 Mon, 20 May 2019 10:56:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190520143647.2503-1-narmstrong@baylibre.com>
 <20190520143647.2503-3-narmstrong@baylibre.com>
In-Reply-To: <20190520143647.2503-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 19:56:27 +0200
Message-ID: <CAFBinCDy9rOgk7pHSfyam1YUog8PFJiqyDNhqPC_ayY+6tWrZg@mail.gmail.com>
Subject: Re: [PATCH 2/2] mmc: meson-mx-sdio: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105640_097639_AA46639A 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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
Cc: linux-amlogic@lists.infradead.org, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 4:37 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

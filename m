Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7219C60A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 22:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QW1uMdfJJIDHYuYCY0iUEr6eHsAXhhNfSdUyXjRb59g=; b=IurpOw86kr7IHj
	e1SKge5ows/U5ljeArhIO5Gdqyl57RkDhMK50XD65zXzamjgpe+k58hs3alVU1YZrF1x2FtdyrMEc
	UGsE6y0EArtLIYmmKAimtgMFkjuKEoCU/xNXvuAqn3GbVz48zqNsuEqCA9SX40muqTXwhFTBWEIhc
	QXHJGRKcetpa8zOgyV5KcxWvQOofznucqQ0z9/IYvq0JgEIgxcjCWLbAQyBmAhUsvj2vr1bS0gFvF
	cxxdgYuLUf+IyJHIeLapeRrX9phUBjYzH+buY+vGGf4E3GsNH6KbMv5adnVH/qG0wxriqAzJHKZxW
	Rm0wKlLZxtbhlN6GyxXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1yhG-0001n4-J8; Sun, 25 Aug 2019 20:01:06 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1yh1-0001lB-G7; Sun, 25 Aug 2019 20:00:52 +0000
Received: by mail-ot1-x342.google.com with SMTP id z17so13268426otk.13;
 Sun, 25 Aug 2019 13:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2BnqxOLA8r90y97Lp5feVAq8KO0vU53UAi87Q9EqgQA=;
 b=AsbeQfzzSIJo+vyXHZwV6YfVP6kZ4Kohm8HBci2wkuTRoFc8tq+Yh3uXGgGe3Bc6N/
 iJBherhwguu9LRd+ii94Iv6OG6fOSiE4V8msy7Wt23zzpNw5A3khVtR9FioVtJMNg3+j
 bX2/S+Y9InIe1yICt5ARAoiTDiyiQLFIPSLJeBNfF5LeRMMvoZTjT5FdT0sgFhxdI0eZ
 zyGXLU9ZNMWDuZ+MuYAp8IYKfyIrCOHGkwf6k4VpV3WPAxyN+GcdSsGxAv1w6SvOB8MK
 btkLfJ75gpD+uABJUlo9Ma0PF2vVEWTfehO8O0TcB7QkRI03fAQO45tqsgEdcYrNFVTH
 p96w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2BnqxOLA8r90y97Lp5feVAq8KO0vU53UAi87Q9EqgQA=;
 b=CeJAiTKPZHKaOjfU8XYLwhyMaAwylNBiu/Pj7HkMwRnAbNheDeyO7V7al5BesqlAE/
 2g1Rt5Fc7ZACOLQpCZ1ZlAkvzkg+4bgYVrysh4Zgzeerl5FnkiYbCKmj+Zi8n1Sq2QBx
 ZFYIf78HVKYY2IBlTrUYY0ASD3qwz1WmCrzD+z+1FOEG0xbvsu6S6aynblRm38NZYWoq
 jnmyCvrRDVLxenTax3dXwqZN3cFSd8bqgGLLCtBJlO+k3ZK/+VqcHHlrRxaEJbqYfeJg
 pjX9jb3Eziqp0mj+Hd74f21N9yOvp4ZFyHdBoxJS4OX4ZDwYaRCqiNvqIIbV0EdqkzdK
 n56A==
X-Gm-Message-State: APjAAAXJl9JttuMZh+624UmFL5WwHHTUtD8+tyFj4/hyeBHGNLh66usw
 kercJjOlo3bwwBm6scOUqHeQnIYvqoTbkCcYs9U=
X-Google-Smtp-Source: APXvYqyqDo8QI0aN4J75YWtE2lRXHhmIJArBPeiCvJHlr70ZxYAwAzvjeKsx3hcpNPj91nj2cogn9EDf0qfX7vzAkP0=
X-Received: by 2002:a9d:6c0e:: with SMTP id f14mr8712052otq.6.1566763250104;
 Sun, 25 Aug 2019 13:00:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190823090418.17148-1-narmstrong@baylibre.com>
 <20190823090418.17148-5-narmstrong@baylibre.com>
In-Reply-To: <20190823090418.17148-5-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 25 Aug 2019 22:00:39 +0200
Message-ID: <CAFBinCBypL5D0Rs09V5xZBrV+Spnz-9H8WnFq+0KoLZbtEprfg@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: meson-sm1-sei610: add HDMI display
 support
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_130051_538534_1A3F1FCD 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ulf.hansson@linaro.org, linux-pm@vger.kernel.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 11:06 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add the HDMI support nodes for the Amlogic SM1 Based SEI610 Board.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
this looks sane so feel free to add my:
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

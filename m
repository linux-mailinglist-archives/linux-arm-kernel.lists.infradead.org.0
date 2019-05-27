Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9823B2BA09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EI/UFLQSv9QzGfwIuAGx8f4XlEhTKz8bWtv5pL3s6g0=; b=qFjQwKgy9pHa3z
	aKa6ZYy+6uqYxMkgobi2varJWBd+W53wjB55bOSPuqE/nM3fU70Y9AYt7T70goqW9g8tnw7h7IGCo
	FRHaYoFXvzbqQ+GHTk/BsqvyONJONkBYpxNa+m+HeHiR3o+m/8NqXh1eAxFMsTAyTBKk2ucaj0agL
	RcSrjbIqnvVP4zbBXE3HlsdSgV1Jmg+5FpsKNJFp7oDtTSVK4O9OezDX3lHol3LivyXrhvM+UCExc
	iRmQz5AuyA7nVb0c9Za3eFdICWJPflDzO6Ry2fgGBX4s7iwk0+9OnnPL/sucYtDBZEp3iqMefct3t
	+1W8RlWIMVzNVxAMj3dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKHC-00052T-VK; Mon, 27 May 2019 18:23:14 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKH3-00051V-EL; Mon, 27 May 2019 18:23:06 +0000
Received: by mail-ot1-x342.google.com with SMTP id c3so4254979otr.3;
 Mon, 27 May 2019 11:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i5pS9FIkhrcHEm3eZ5Ga4hDJRUcLD0JmetiyRDO9zL0=;
 b=j6D7GGZJ3jnysOk0JfkST3h7j24yQmNC88uoYWa5a1qsie60xuPjBU/Cj/GAUICFlC
 LZo8MfvurqHxMCDwb5EOFeQ8m5KdaAUCNBIK1MTcsBvyV0KQhC1d7Y01//YB5PKn6ib2
 CUVFiE3JYOcipMj41ocGRmFV1vRmlLfEst7sSDT0dxrfJ0ZXRTdhI4GJwIF+G7hBCess
 Z0vxiDtJiNV0/F+GfTtDpRr14rH+iUOcUD5jQN78HNxiwJiwoz4EvfA5kNgaVhqMs9YA
 ReSrGQT88MdeSp7drrfiLU0ShK01qHhkT4Ve8Shfi0JT81JniwQfsUvm9dETgiXVUFWw
 TZ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i5pS9FIkhrcHEm3eZ5Ga4hDJRUcLD0JmetiyRDO9zL0=;
 b=X6sd640Wtw4hossAPZQoQufVxa+oD8JySs2WSIS8MvJCKcu5RB6rXh1sI8gh/St74j
 vduIGNP6x92aoY3d5zC4o3zpLi3dM76M2JZFLO8aNX7GgU32ZM4jCsvM1w2To6x55YZY
 yaA4Y/4yISiq8nukz0ZpNYFSzyWI99Thb+YRoyrxQlcTnFaSOtP/ThZzSq00oUZ3kvYF
 Ipaoxhfl6XklqGM1llFXFLZNaYRk/RsdR43DiRWASok0F4UuC9DGCOgn64+hkiq+p7Rr
 2idqwtrQ1HfopXy3fRDCpV/h3NGBOMp3+jlD3vQi3Zv5+iBDNKhP9qn6vG5X6Mn6gLHt
 go3g==
X-Gm-Message-State: APjAAAV1eWBaCSv+FT6sOaqUue1vFNKcJT1dcmDKYF1juPOnoCkrgfKb
 q/2Mr/aDCj1un1bgHfTB0JrULlKHdjsF8hWvPaw=
X-Google-Smtp-Source: APXvYqwfpF+Rik391VHLo9HSAWgoGl6f3qI+cIt2fwDI2QSuXZfaJTA3JGxi5VY1f+Yun54aGJyKfC4SoUdPayCXxws=
X-Received: by 2002:a9d:7c84:: with SMTP id q4mr2163959otn.98.1558981384606;
 Mon, 27 May 2019 11:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190527132200.17377-1-narmstrong@baylibre.com>
 <20190527132200.17377-8-narmstrong@baylibre.com>
In-Reply-To: <20190527132200.17377-8-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:22:53 +0200
Message-ID: <CAFBinCA2uA9TXZzAYhUm9q-qad22fTjiAGxWuuo_L20o+K5qeg@mail.gmail.com>
Subject: Re: [PATCH 07/10] arm64: dts: meson-gxbb-vega-s95: enable CEC
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_112305_481417_47C5528B 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:23 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add CEC nodes to support CEC communication on Vega S95
>
> Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
just like on all other boards, so:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6630B23F77
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:52:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yahuIBheiaqGqXtWH1i/pNQJHD5FKFqDnvS5f5Li9nk=; b=RjBuLNHBmg2uLK
	TOwNJ5MN57wll8b8vB8xXvKEXlPMY055xQg0sycirOQPTJJ63doB3fM78gBLoNPuGB1Be07066M8c
	R7hXoryLfOKTjN8nRZaHwdsH0lmZOfnI5QOze/7m26mDvHAg8kzWb9g8+xNyzUSSNj1nvr30bu9Hr
	+AiUeqNFbY/H/fz4PvIrFimrzsnQemFZbxuFPDfFGkmo+oUD7JkJfHzw7l5jhsCS3DatGQ6A+TTGB
	FErqK7TnG1UCYo+5yXD1ERGebWVA/qIBkLJzYiAYFO3qjgb0u4J4G/OoCuA1dhClMUUy9FxTXMl6g
	3nkH+vgW7qONe1sEn42Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmSH-0005Ff-OW; Mon, 20 May 2019 17:52:09 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmS9-0005Ee-9J; Mon, 20 May 2019 17:52:02 +0000
Received: by mail-oi1-x242.google.com with SMTP id r136so10675001oie.7;
 Mon, 20 May 2019 10:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bLlY3qA7vJB5pB/85supzcun/5fE7fwwy8teM59jstk=;
 b=AbQa4d1keqd/BDD7x+wNAp7tmtUjC9bTqCW4WRudeyF15W9elUiBJ4chChiuhZE/Rw
 LRGi5hAY3QteLppe2OwPYbtx8KEulzBqeVNhlxiJ2dozNJg8Wo95y/q37wWHGQhfASfV
 qb3Yg+46JYqq2oTHtt08qKjFz0PyHjG4iWux11r4C32ER0+tRazSJp2FKBtAePl6h+c9
 ObHWWXcoPFPUpu57FHOacEYoGA71+Q0Jd0dSvNP5HeWyLjmsXHdCqqdA6zZ7xb2SmBm0
 gTz9ZDbUYAbJrvtqCoqg4TKnOgzjTqIQHgtNYakEPVgEl6iF6hyPus2gO45bDO9jSBsa
 lbBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bLlY3qA7vJB5pB/85supzcun/5fE7fwwy8teM59jstk=;
 b=ZaOtDz/FfBFKu7mZBdTFjrQmYeyjxGKxZOxbJFeFP1GixGg70op1s6SQnBdo+qpAhM
 V0R3Zsnzv+uLb+RiAV0lQ+ZQaGJDUkK8c63aUm60rFxv3YDAEHXJGcFvVVlb3cBWoFv1
 6YtlCr3bbCooPTefc+nNYJ7oCTsdNtD7XRWrR5U1NxcMZBtjpRTl/o1PwPYU73/c8TZV
 2Ck8KNF0Nf9A3qwnO7jiNM0EO4NdW3c9I5X7mUsbAIm33a/ccLdufkGUjNCaivbNqCM7
 5vXUpA+INOphXH2QSLCHHGmCDIWlLDymh+lc6unx2JIjjtDU7RMkMiAm+2zfu6qAYL8P
 0Vog==
X-Gm-Message-State: APjAAAVznA3Rvuv1FBoLAb7nvb+RkFVVvC7R9xeX2rKPGnzP8IPbqJtK
 gi16rE6chEyQP0jis+t3UesRc4byq1wd/Y97HQ0=
X-Google-Smtp-Source: APXvYqxiFXL690TZO93hoIiMXPwRHNWOJXmMa25xFpK2VvQFxaqq4LCf1V6YJFp9f3Jq88uc83lFjBYQHfTH/0m7wVY=
X-Received: by 2002:aca:4341:: with SMTP id q62mr304351oia.140.1558374720213; 
 Mon, 20 May 2019 10:52:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190520134817.25435-1-narmstrong@baylibre.com>
 <20190520134817.25435-2-narmstrong@baylibre.com>
In-Reply-To: <20190520134817.25435-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 19:51:49 +0200
Message-ID: <CAFBinCA+G6f8pq8zPwzq6rkNmyS6U=7fL5HWnObvWDWCB893iQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: meson: g12a: add drive-strength hdmi ddc
 pins
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105201_321280_3A459149 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 3:48 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> With the default boot settings, the DDC drive strength is too weak,
> set the driver-strengh to 4mA to avoid errors on the DDC line.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Amlogic's vendor kernel (from buildroot-openlinux-A113-201901) does the same so:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

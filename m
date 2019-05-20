Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95DB23FFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDJXVhQ5wCNgb/k4dERjeKVO1KiI3j/MXvxG4oAB8oU=; b=DDlz+b5wJK19Ig
	Eg5fAffTTLIwGxeRYdMivDQp3TXAMHNCLKI/wqwQRmtrgcrKlaIh5X6fdHMJab1QmJB4RWUSCVjEk
	+X1iVO3TdBNTRk/dE6FARMWr4DiUhj74HbUWlwUGD2TKOkLWc7MBX4cF2WJfJKE8Z9cz21xUsQAQN
	RlNcHN+iKZrtnIBsURkdq1Od5BHLnu0VXOYA0e4JFMwFrg3+w2tAXng6KqSBQvSuadAVVrSUIIFA/
	w9V8ZF1gMtZan4kcD8FVxLIjzUOQx1C5xXnGIkMI+ubqKZpuwxdNURiq1MtJiOg7SAvbOq7RlP3+L
	oAvZ+RF3cp1BQj71YhmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmhu-0007XM-1X; Mon, 20 May 2019 18:08:18 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmhn-0007Ww-25; Mon, 20 May 2019 18:08:12 +0000
Received: by mail-ot1-x344.google.com with SMTP id r10so13867978otd.4;
 Mon, 20 May 2019 11:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k7G1MGSx6nHwpQNyADoCOs+yAwPJeVT4zKxuY01zrPw=;
 b=rUgI7/cyozVGEI1WAULyI8FAByxK8naBaSx0t8U2HtADFx5+PhMerjbmLI1lCJD+TF
 DWMKQ5MDTPYcUaWAHhBS4Vle2kj1/Cx5mhku2J/Fg1dkoulRXCTqdxCGSUM2Nn9cJrTj
 TpnZQBA2TUUOk5m8jyGwZsrnxmCmXOwsGiB4xvQ80NO49sh/NFKkr8HSviLYPdX394fd
 er5Rf944R5jciEy94lciqJELseu/5s2Kh0FDiwnhztL+Bew6IjgrO3IljmPckNik3OfH
 O71aAdk0jpPZwNlowDIzDMuOmLf+cnOOIgLAFV4pAZf1scPHRV5F0BNcPGcPXZ2SPdbV
 u5xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k7G1MGSx6nHwpQNyADoCOs+yAwPJeVT4zKxuY01zrPw=;
 b=XIxdy8yxWrusND050pPll82N0STi+78/S4hGWxQh+JuHNLMj/uKcYbw8uWVf12gZ02
 bxc8pWg9wwMmycNsiIGdPqPG1OKMO6GDarHHyAnFHJLaS6plh+X9E0HiUwOrLIWLc9cj
 rWMTCpejGSq6G82bzecTYlHTBrbP08OuL62OEZAIqnTtjGwa78jCVHRggMBgtdHotrFJ
 xdxjRfbKBDm4odZG3QVQ9tEdO+9pYLI22yyW6Kwj6H0q4K4I1ka4NhZieAR4mZ5LRDev
 6wpXsl8wrsmZgCLQ8T/M9fzxrXSk3n0pu8LWl5QsRdojrovICHPoO0Hwu1IxWSKYQrLh
 Q3DA==
X-Gm-Message-State: APjAAAWl/UeQ72uorAKsUuLmLsroP7XdVzQG/ZE280DzUwYGSU2p6MlX
 9KZN3c3v4kq+nYEQxqagwaZOAABjOfzwmZt0idBz4TGhIM0=
X-Google-Smtp-Source: APXvYqyXTaYQ+NOHsY6Q4lnQpI7e2SZVcHg565RFV+td7ZiqkS8L3mkm0fonYHSX6TA19ts6wUj++pgx5JEScfV10/0=
X-Received: by 2002:a9d:2f08:: with SMTP id h8mr45286331otb.42.1558375690288; 
 Mon, 20 May 2019 11:08:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190520144108.3787-1-narmstrong@baylibre.com>
 <20190520144108.3787-3-narmstrong@baylibre.com>
In-Reply-To: <20190520144108.3787-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 20:07:59 +0200
Message-ID: <CAFBinCBNKOPfnE9dXLwGv=bgv3piCyecrnoCvvvwaZ63fTRX1g@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: gpio: meson-gxbb-gpio: update with SPDX
 Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_110811_095891_D64B88A0 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 4:42 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

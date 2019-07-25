Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8047534C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aCa0JHsL96xpsTWK9HCbsl7j8YmnDvTwXDHR6BUzSkg=; b=B4EL+UK9RNKi1s
	/HjfQp9xCorOkPBOJv/vfyjd+m7hOgYAzLktW0XeBlchYvPgPnP5YaDHMGF3vS8c2JZHtA1CArqD9
	s/0uZigm63yifROIiynJxK5bHGyvJc398+0OMkHO6Vh7lzma/hapVxbhoGqf0Fa/7QqD+dlp9s1sH
	tnsauejyC4fbFv33tucqzoZZxk10brGXHgfrPD/5dAUHEe1YCWQ5SSkF4M+fd7Kvzc8ZXGbcG+fNB
	V6Pd5DObSdN6Bx2p572w5P7a37BDkLwT30Tf1gPTvN3YwjNQXmCM3E+Y1gdHCzIX/WUf8A+5F7FsJ
	WoMQuXvc2dmMtRe4VV9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqg7I-0008Ts-IS; Thu, 25 Jul 2019 15:57:16 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqg74-0008TS-0z
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:57:03 +0000
Received: by mail-lf1-x141.google.com with SMTP id z15so30618836lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 08:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ULqYeDV7I+6CArLFFBJl7JIclOwD5fdG0DCdL0ID39g=;
 b=hH7qnYlQOgtEkGULFvgqqd6pobshyPWqrWTY5b8vJjxGtBApb4EKU0rh1RtC7SW+6n
 0b9bxa6/DcvLIMJUgAv7BSQL21pwQdWbm+3unLlDtQjbtkPQxv7nYxxJIpN0gRwreDe0
 AtwTtiTJFrcqFgC+6abOSSL/VD9JowSFzj5gmrsILwRFKzKXCMy9fNqPCmpFF/LIgemH
 lYO49JWCKg4ICOspYlS+qAfInZhHq2ZNhPtiuqQtgI12VjRZQjiJpM0w1KEiXLlscJMy
 3BnRDCyNZTz+8UrsU2+goQWWezdZdyToJqKK0RnhfshARMJAkMZEUPPjL3mPZOHtjtxc
 pVXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ULqYeDV7I+6CArLFFBJl7JIclOwD5fdG0DCdL0ID39g=;
 b=VNK4mblFscVckTr6yZXYxZ5aRLfkciQhq1zCIaMJxx1fx+X7WMgokGiLEo4twmcSiC
 Qokp8RJpAKSShRu/Z0HsNDmXTpdhMMvYjl9HtG1zcPsR3IG4mVpMHkaoDJAQ2Jd09KwP
 fxiHmrr4oRSfie4dD4wSG5jodyA4T8tiicx3/qFz/NN9DBiplt6rIoAoM5tjcmP7Liuv
 bpF787sFKi9W99CwnK7UdMGNXZbJoNsTOyN1parr2Iwfq18hkYwggPvitE3QUycTGA/v
 dpG9QblbWq+x8zqhcP/OUbQQ86hyshhKJYNzvdesAKq41VqTn2+6QYYoSp0JDNdwbf5j
 NulA==
X-Gm-Message-State: APjAAAVttc5j+W9tlUe0JBTd+25r0iMEkBzxuozDIeD8s0pOZfBDlYvh
 GIgkU8UzYgKw5SrodwOnQAQymBvR0PtAkcHZHMY=
X-Google-Smtp-Source: APXvYqxgkTZ17uGidNHCLcVQ1k+j0kRbUzI/czHFRvg1thsCFWoyoIlu6IFy8abNhWLViHDmt/UTpuBBcWZixvP2XAE=
X-Received: by 2002:a05:6512:21e:: with SMTP id
 a30mr22025838lfo.107.1564070220267; 
 Thu, 25 Jul 2019 08:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190725121452.16607-1-dafna.hirschfeld@collabora.com>
 <20190725121452.16607-2-dafna.hirschfeld@collabora.com>
In-Reply-To: <20190725121452.16607-2-dafna.hirschfeld@collabora.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 25 Jul 2019 12:57:02 -0300
Message-ID: <CAOMZO5AH7Rdvh+wocqHXYSOVbK=jjCANgG=BzD8Kx5XSvK5f_w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: imx: add imx8mq nitrogen support
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_085702_094155_04E64043 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Troy Kisky <troy.kisky@boundarydevices.com>,
 Gary Bisson <gary.bisson@boundarydevices.com>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 kernel@collabora.com, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 10:56 AM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> From: Gary Bisson <gary.bisson@boundarydevices.com>
>
> i.MX 8Quad is a quad (4x) Cortex-A53 processor with powerful
> graphic and multimedia features.

Instead of describing the SoC, it would be better to describe the
i.MX8M nitrogen board instead.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

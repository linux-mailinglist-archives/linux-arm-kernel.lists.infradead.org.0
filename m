Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 355C44977E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 04:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zrzgTM36oM2UHeHoFYCsAMqkOZN6wEkmolwXUpt9IU=; b=mfbD0En0kbnzm7
	Z7+3KGNd8GKtQ479ptHCuXhmaK98IkuhBRBAda+NOUqllbJ34b6WCTupdGuNd/ttW18ZwAOLqb+Xa
	VnkxRmOHyYsKPKgNhtXRDnstXlJV5Ydx/905PciJQv3psr7wq+OJIX3yZmYMF+QgKO2DmPQoeizku
	MJdXBe4zZgoTp1v6azr5Aa3AYwoqHsBgNlQCu8wziyBh1S1yIcNnAH0/0tnZ6LA6PxMHsgNl7hTbr
	bt2eohLIoCsQpHpY5UDEE0RJEw88kBbRcUnFp/T6EdwU0p2sBoSQctAWSUDdXhQVYAsqg1btVf7J3
	+/Yub+AiOKb1qlwXA+lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd3qH-0006aH-OM; Tue, 18 Jun 2019 02:27:25 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd3q9-0006Zb-5a
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 02:27:18 +0000
Received: by mail-lf1-x144.google.com with SMTP id d11so8031646lfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 19:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vrH4UlyITIW3Kklxm4K11PO4hKeqUB+5+0NWGjvtcTY=;
 b=bKGxDFFLkp9ouI8Y2f7JYne4r72v1UTs5lFlQBWs9NdhAbEr64eyuACseV54EXRwNw
 mlapn2ReX00k3YdnoOQI9hU2aCWhO9MrZI9M2pnF35G8AM2Xp8KEYA0Cj5QzqS+ceTQK
 S8wIGiQLI/A92yEiV5ximZThSjTM0KcNf6+R6z3Ko3gKFYPsOTmMrg9OS7hyZrwI9O70
 0NBgJXDE52orjxjG0qwBNOlJHvWAWcBMvxj6xPS+fLo7c6j3MEJywhgNL8stDrwxnb0n
 WjAteum72VnlgyHoeH68i2tMi4LSY65JWNjsui9Ox1AteQn+5pcC3q6YwcjZ+y38aqjw
 BwMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vrH4UlyITIW3Kklxm4K11PO4hKeqUB+5+0NWGjvtcTY=;
 b=tn48Bz0Odt57r68qGApK1V7XqSWhak1GG00eybDc6s50M1meT+IZFPbi/R99Avsps+
 WLTb+vaRKFqFaPhfEN5zDN6zYFVgzTFvIIwXeEfC0e3CIAHgD9deLe+3vChVpjJkLpAA
 0wLhWZ1iT1XashMfwFwZdU58Hp803yNNI9Qctd4wxfHveQiBKM4dLiuz4/xvqo8IN4MU
 VOqgCUyQ1zcsBzPEwTxBgNRAbku+4NTNrgqFapYghTpZ/96CPQZLuJVVywLjwJc33mYo
 twFkpGEr/UGOXc78gM7QmqRvAZrsDR3Gf44/DhBgN6xKkhp5oxbeKPy5TWcm9Yd38kFa
 38yw==
X-Gm-Message-State: APjAAAWpvwfarf9tr4RBUgh+O5jc0RSeGEOIOAtBvbk1mE34MKg5wd+G
 +QzbnAwDPeDHWI4TVs+NUR1cPmMCeTLTBtZwHNg=
X-Google-Smtp-Source: APXvYqyvXYhuI2Yazh9lCRour0FSQtzopBKfusSjy30DqAVcm+Y2Qocm+VCIR4H0sIhpNi+9xdYJWyVqo7CrM5CO0LE=
X-Received: by 2002:a19:5046:: with SMTP id z6mr9304775lfj.185.1560824834387; 
 Mon, 17 Jun 2019 19:27:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190617224028.26974-1-robh@kernel.org>
In-Reply-To: <20190617224028.26974-1-robh@kernel.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 17 Jun 2019 23:27:24 -0300
Message-ID: <CAOMZO5DdAKH5N0vDq0tdnjarzWFkJrLg_OfuFoJj=qm7mw+Jzg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: fsl: Add back missing i.MX7ULP binding
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_192717_245987_52C03C09 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 7:42 PM Rob Herring <robh@kernel.org> wrote:

> +      - description: i.MX7ULP based Boards
> +        items:
> +          - enum:
> +              - tq,imx7ulp-evk            # i.MX7ULP Evaluation Kit

This should be fsl,imx7ulp-evk instead.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E054123FB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sizbu2faHj+ezPj8BSTOgSVchgJCGQcEPGaiwyqL/oA=; b=nGsXXsfscris16
	X3thARnJfeynoQ+0TRRZB6FRXr6nvkaERD6fMTLthNZJ1I79HD26T9xwSvyW1FoljSEY9s85RlrLH
	Tb04ujAq22hjSUkD4T+sqFUBnbOyM7Cu9oQc9KyFedn/rS1QHUBpLQdW2qr1GcRthQbogIr/MCH1l
	GTZAZcH5cWR7HQ8jL/5tMPnqJ+4/tngeWJ0vpVd3znnRwXJFvQiBnHZbYhsKvit43yFg3MfNmgtiA
	DY1UEoCHxYM/mI8ekQlXGbV7q4g/aD9GWiA0NAgSSJKnnMmLjWcbYNzwKBXqjt0iaxedCFJnWVUPk
	dGuIaOeIya/30z/RpsXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmXa-00014Y-3j; Mon, 20 May 2019 17:57:38 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmWz-0000MF-84; Mon, 20 May 2019 17:57:23 +0000
Received: by mail-oi1-x241.google.com with SMTP id 203so10655083oid.13;
 Mon, 20 May 2019 10:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O+YhahOwl72NephherQ5nxh/plQqDrRpWmjW6ty6chw=;
 b=iJIoy/ixx6XMCclG0KXm7/4HGgiK0ifwcRsSK37SAmbU7SEWP52EOkgkw2QGxih4u3
 Mvmx69eb8ymJWNLX8R8nwQ+TvKECMa3frmpyCQW7cvsqa8vvziYTt4I9VpDD6v6jWrZd
 szvPKHxgce/lkR4cBCMufNwPZvr84X/vSxLkrRDTwDyi6Y0O/SJrJCj0jTO5a+SGHZoC
 16VXZP/dmKFRa90rzfzm32BhmJ8gVX/IaTKNEEvWzhl+W1mvIVtCCTyMoXq4csxFQwPV
 DbDQbZyM2g9m1FlQbvEGBY7YUopt/O8GJl17DO4IdeVWj7bmAmwBEPAH4a5whgKvaKYH
 dHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O+YhahOwl72NephherQ5nxh/plQqDrRpWmjW6ty6chw=;
 b=c2sxTODbDJx3cJJg/rTskWbgWemqFJTneT2EQ+cRj/I9Sbgp0Rg0r2Oh4Z+6mbnMIN
 g3DkaTZPiI9YTIxEojWvVkaLmeuufMhr8y32qciKZ+cfPUwkziqZzwL1UkO4ti/e+HPJ
 uqqc5AxNbexU274L4NxnAlkHPa5RnYvgr29qNWuD/OcaNs0CuegHcck2E+cAYCyyKtQJ
 maYRR8k38jDq2bUuCgZcbzH3E5TNLx018GqBZrWkGAUz892Qi03pyRDnzvY1PdFgDoAZ
 qjDweDDluvdecMMB4IhS34fyfoLFEqs4MTNVa6axMr66Fj4pSPpcW11anc5ZWFSMH1s+
 Iapw==
X-Gm-Message-State: APjAAAV1p7nesmoCpiUv++wp1nAUsWty7G7Z/VEwGUuG3oS0B1Lsgdun
 ABy3ZK84p6IdlQIWp5/Hcbg1ZtWH6CiNUKHobEc=
X-Google-Smtp-Source: APXvYqy5VAnJeMmPXq3sDvFlEOPBnOK7QobZpzr9pilr4EW7NuXmZblLmTpenR3KYHgu/fJsbCTCAfXRp2y1aTbqpYA=
X-Received: by 2002:aca:5b06:: with SMTP id p6mr282468oib.129.1558375020345;
 Mon, 20 May 2019 10:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190520143732.2701-1-narmstrong@baylibre.com>
 <20190520143732.2701-3-narmstrong@baylibre.com>
In-Reply-To: <20190520143732.2701-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 19:56:49 +0200
Message-ID: <CAFBinCAxhEJXO9dsd0e=zJuKgEsAwHrX+Jr7seJpGNjDL+63qg@mail.gmail.com>
Subject: Re: [PATCH 2/2] nvmem: meson-mx-efuse: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105701_903968_4FEC0C39 
X-CRM114-Status: UNSURE (   6.30  )
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
Cc: linux-amlogic@lists.infradead.org, srinivas.kandagatla@linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 4:38 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

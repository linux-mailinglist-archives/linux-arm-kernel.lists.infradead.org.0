Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2826596A27
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuDB90XgK3oPSBD+Ifw9AOdCeUosqioXNwQYkC+/wqE=; b=gASaSqrheS2DAs
	TCuWM3c0cUv96LtripHda5rn5wJtFJZ+G+I7Sph1LZkPmFFxyQMaGPI4ER4eSIQLLtCxwJk98T+oJ
	5TXmPdjnNpBnIKS2zl7WEhW4jtsIJATc0fK5YmIinA4ZYZaFnY8TbqfbjWT7Yev/+CGdkfPyS5qar
	zRa4JcvI4oPlGdDxSJYwIdhxlSgr+jaMvHgM5olnruMQWNw+PQdRwWY2S6HWyDoBS/isCgie9IKRI
	ky3juwP9qATINMUu9wZSdSXSH0QPeKHE1FOoAiXMs3kv+VD+oqtx5ZEmRKJS75DZQ+X/xW39RJT60
	tW3y/RvKzwu9/galvFCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0AeA-0001KA-La; Tue, 20 Aug 2019 20:22:26 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Ado-0000xt-Rm; Tue, 20 Aug 2019 20:22:06 +0000
Received: by mail-oi1-x241.google.com with SMTP id g7so5161425oia.8;
 Tue, 20 Aug 2019 13:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nchB5IQJ4eCth7WRS+xQ6t/J7ftCZRuwWmTvIH98SPY=;
 b=ux3qmG5nOv6RqqUO/UrNs19nFUZIDIKIO7BX6LX3OPX2OxfXe+uFPOLooSObQ2w0ds
 EnvmG4AXd+88LnBogF6v/DuNpOpLiH/uQQhgqL6OE+HkMmiATORfDcDAo1/QqMcDf6Z0
 +MKk8OVRri9it0A2iMQcts7O4hCeME79BXEQFWKiKhtpHCnHPk0N+fcfL/KaVTrdtHw8
 yuXCZ5qSq1ZdP8rPyXspMQYC1XIGKbr0y8lGSBlaRcn+0JRvFYQWy0M2RDqqpjMyTdHK
 qYpasjQT1u954Rd2Led1/R7OQQkQ8HxJNZe4TL05ptOv87/+rZ4LAF+3FKtJT5K1fA01
 G8rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nchB5IQJ4eCth7WRS+xQ6t/J7ftCZRuwWmTvIH98SPY=;
 b=Liznr6AKE60mpcre169wR84tDGvE42Q62xCTOebPs2m5HDB0EtZ7uojgutocbmJLp7
 h3AUTeU05TT82hv26oXM31T4aDb054XUIxk0GxlnRqD9SSHlFUVawOm1QizAa0nrVdfK
 INPdX1ugiQ0vgzFK4crkQ3KJRY/rMhltiRvMoH1ByNrwp0YLIcelj6y+BSSgkvhGHNlX
 FeWfEAXPUs21MFBUDQwQNFGU9D11wVjPF+GZ1Ln4dkm6oeBL/ZpgT0kwzbnC3LJUylSU
 tYT6b5t6bHaKqcMXKIXo259jZqjixqYbSWbTWC1ZTt6sBScW0I6Sxn6cxcj3HLU/SLSS
 8e7A==
X-Gm-Message-State: APjAAAV94el48zDuWdNYy56yXd+EPJTq9F1e5cJFbth3lhqg9xQKPaaZ
 zGQUqtWANxnEDviyBGpUgUq3pjdIwbHeh4a+OQs=
X-Google-Smtp-Source: APXvYqxumwUgslc50+vHGLyx2kOQnH2aNwLHVp9M4yP8Dwkeo7QcsJKJWf1GmXl+B6DS9UwRECTx1xxWxPS0jw31bp4=
X-Received: by 2002:aca:d650:: with SMTP id n77mr1398101oig.129.1566332523693; 
 Tue, 20 Aug 2019 13:22:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190814142918.11636-1-narmstrong@baylibre.com>
 <20190814142918.11636-4-narmstrong@baylibre.com>
In-Reply-To: <20190814142918.11636-4-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 20 Aug 2019 22:21:52 +0200
Message-ID: <CAFBinCDvLHrfy4_kSc4ne6Au_+gdC6Z6BX16KamPO_=rcYaDqw@mail.gmail.com>
Subject: Re: [PATCH 03/14] arm64: dts: meson-gx: fix reset controller
 compatible
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_132204_970047_E116D235 
X-CRM114-Status: UNSURE (   7.30  )
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

On Wed, Aug 14, 2019 at 4:29 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This fixes the following DT schemas check errors:
> meson-gxbb-nanopi-k2.dt.yaml: reset-controller@4404: compatible:0: 'amlogic,meson-gx-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

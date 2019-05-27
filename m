Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F232BA00
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PFQHd0Bw6ZgmxdSn7oftt87Jrg0AzzbOuW6M6keRGs=; b=TPoxjzjSXArg0S
	8UZ8llV3f0egzD1J9zJsKWrpU8jQRRDYsY9vzkHkQvBbzfUuixssLzMQbe5+Keu1TL/e6Nx2ZZv4D
	1LWKBHih2Se53jzx3fYVut1sscOHrqbzmij1JCqunQmhUFDJD5WLgXV1SpYeDQGqBcS+IzHNvQOe4
	PvZHdnOXkkIjXLmpGhOtNC4UnDlClpfs/zGTHTkadBA+YYEcWUkdJ8TTFw9RIG1xJoFWD7n3yVzfM
	9lO4iWKKyzZTkPNBibGFEw4b8n7vKIMogMzotp76bXTCSX7ABaixKcZ6+E4v6qXsDkHlTfnou365U
	EdKh0hwAGBKDo6qereCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKDy-00035Z-QP; Mon, 27 May 2019 18:19:54 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKDp-00034B-GM; Mon, 27 May 2019 18:19:46 +0000
Received: by mail-oi1-x241.google.com with SMTP id y124so12471775oiy.3;
 Mon, 27 May 2019 11:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=REA5zbty0xHe7KtmiN42aAu+VNT3yUAx9IRSmGEhNfk=;
 b=gbV3rcSaNWdBb7ut8i8munG9MXAOo1fy/pLLtM3+3QVqU5C1gi2Z1GBTBAgzs8hgPf
 8cptcKIa9Io9RbzWpXy5PMaVA7P8xJwtzv4ARVL/60OtrdBRKOglUTb3ZgcbrCY0NH/1
 6zDVtmlqq6MRXVJvYKO57yaEGQThkUOsq7us9n35ODeZFrsL147+GXbEO2qZMCvp1fDu
 3EcCdn997nuGb+LJbAaHSESI41byavV3pUN5qol4IX9CQ4H5Xk0D2w957Qu6Ssl7yhHR
 EYw5ll+x1heXuUotikVRRDhJ5Mntrh73wusDulQvKzIeer0WrL6mBbR19gbHS6giiYwf
 wASw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=REA5zbty0xHe7KtmiN42aAu+VNT3yUAx9IRSmGEhNfk=;
 b=cwDoVMRGJ8egRr+Z5Q9UfZ21Lz2c2h3TsAjvFA8qAJb45oCB5wWor8P0brIhzN/dQ3
 kx0jR+03zIU2LNIQWM88BOQGorcsO/QLTrogbQQTwurvqgAioPa4nZZSC7ewGKHk+Afo
 wpDbz7wL9aUy2gHYBo726Rfw7BXAiseHUBMS3jNaQs4j/N7jXQTSQpgwxfYy4lofdecR
 cqspTzZbZJWPiJDEOGgCB0sFKf7Ei1BUp/ovDQBlkm0tG2tFjw+pvxdpzQvMX4P1w3Ya
 ZjA+XzwmIzawtcCJOUxzLC/OZ2o+NLXICiZFsgsgElRipK+dVPRRKimfoHcaP1ub7W1n
 Si9g==
X-Gm-Message-State: APjAAAXypb4MCnUU0eZcg/LXsCPCSH7hQeMfe7lBNneVKycL5wWIImZu
 ceyKgIboryjz3m8Mn1IiXwvpWLFRjcyd615WxS4=
X-Google-Smtp-Source: APXvYqzTi4qquj7OmlvYOg2myEZ6aId7IpEInhvdySDJtzKXSiQr5zVib3yXSGtTUawov380F+pHCxVj892XOBAGFtY=
X-Received: by 2002:aca:3545:: with SMTP id c66mr167035oia.129.1558981184670; 
 Mon, 27 May 2019 11:19:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190527132200.17377-1-narmstrong@baylibre.com>
 <20190527132200.17377-5-narmstrong@baylibre.com>
In-Reply-To: <20190527132200.17377-5-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:19:33 +0200
Message-ID: <CAFBinCDRASWwVoh=vuyqyn5HTHcfa9cXXnMWfpHSbxUAeTAFgg@mail.gmail.com>
Subject: Re: [PATCH 04/10] arm64: dts: meson-gxbb-wetek: enable bluetooth
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_111945_570236_5A287C95 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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
Cc: khilman@baylibre.com, Christian Hewitt <christianshewitt@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:23 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> From: Christian Hewitt <christianshewitt@gmail.com>
>
> This enables Bluetooth support for the following models:
>
> AP6335 in the WeTek Hub rev1 - BCM4335C0.hcd
> AP6255 in the WeTek Hub rev2 - BCM4345C0.hcd
> AP6330 in the WeTek Play 2 - BCM4330B1.hcd
>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
I don't have any of these boards nor the schematics but the
shutdown-gpio matches with the reference board Bluetooth GPIO and the
rest looks fine, so:
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

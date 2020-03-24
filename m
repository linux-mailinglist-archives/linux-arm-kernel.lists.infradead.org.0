Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82771912EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTFxhheLN1e9GPx/YSEpEF2SNSkSncj9EDqb0MOlJuo=; b=an9RSWqh5Sqg1w
	bDYsYnlGAyU76mxhooBB7ifC4TASC/PyaEPx8ipwbfKThnxyWxPcAcSy8ro05OhBUQunvNkj3Jp61
	A3uPx9BePV+xlIeBUHV0kElFMR+InhiY6x++lDA+cJa4OekWH7tF3g0V9j4JptWwAEDMonrvtyuZR
	FoHesUlXoLRLUku8Bkx2zGaGtszWmny9NQ7cSyaARMp3kX6NAkaKxgES/ljaqKEcTyNhwZfMwDzod
	te64oJ8yZYMfUY8JrVpiG/jDqD4s3INFF/jWIgIx0ICNZKF0ZPV3/dTi067NovMKrEREgI1cOlAXg
	r6pcnPRJ4vXJLI4wbx0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkTZ-0001Ff-4y; Tue, 24 Mar 2020 14:24:17 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkTM-0001DE-8i; Tue, 24 Mar 2020 14:24:05 +0000
Received: by mail-ed1-x541.google.com with SMTP id cf14so11680657edb.13;
 Tue, 24 Mar 2020 07:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QvAJMhrVEj0lhCeXiD2t+Sf+5S8zcMc++t+oIIyFqcc=;
 b=ofThQBp/FPnmd+jt3Us1RKqMosiZ3Ld7CXBzRMIDhVDoYmaAwBY7uU7UZ3mcqeAUgY
 rOp/qmK2OCIZ3JC4VqMneHfH983Gy421XoLJQ3vwihZRiSeHlC5zsGZshWiwBQEJkWZ3
 vJvDXa/1N/S4qiiHJuV1wyuw/LBvGPpg/zeT0km+IumovVdONxeBi34sAV0DE9r8RUCi
 BnSbWEljnUCrx48XJBdTMfPDedTQ7Q26FY+sy3jqj3mZK6IqhcTkUiEws7qZDFzwCGF9
 8qhYqIeqDEMJuXGAZ9boHindf0mteZyl3iCHYSf3f16vhvRUJmO4RehoU6COPpxa/pOG
 SSLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QvAJMhrVEj0lhCeXiD2t+Sf+5S8zcMc++t+oIIyFqcc=;
 b=nmRS6K9JFL/SzknZv3v/xHUEJvtV8K1RVhpnButLkunztcsOFM+VFvNpHHnBQDWqvK
 pYEKmDwNUV/SdqpQYJtzT4Qc3cePoUpyvP/JcDrYCkmScXRClMa79FO+NUHNHl7Y1Q3T
 WjXh7wo75nPYxAOp7TocNHGejxKQpqHUhRHeoeITC2PsOk6zghJgx6vXUX9HYor9VSN1
 tfjIYSPFuR60fXwHxgQityV3d8bfYcdnDRKBtOsHow5myxl2D7f/AWuDJ3/DSqFpq/kM
 9b3XRH7+pxw378OSHOC5FNGzugar7HQKuoPvrJnMaKVQ8TBgQk4H82BWUdz9RNis1dUZ
 HMzQ==
X-Gm-Message-State: ANhLgQ3lsKvCvnKX4/maCc7WyXg6bk5TzzFYOvY3XXMYR8WRHdWcpT9p
 HSM8K0B6pVQft3cL+Oy95zHaL96ghBDmmYTXxCQ=
X-Google-Smtp-Source: ADFU+vv3y/Han0bqNS7oHPaFZG+M0NVgMJpj16d4Bgc4iE3n14CjrUhR6lEygqPtDHjI6W5B/3MdAYQNafV5Vu0eBek=
X-Received: by 2002:aa7:de13:: with SMTP id h19mr27875188edv.52.1585059842383; 
 Tue, 24 Mar 2020 07:24:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200324102030.31000-1-narmstrong@baylibre.com>
 <20200324102030.31000-5-narmstrong@baylibre.com>
In-Reply-To: <20200324102030.31000-5-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 24 Mar 2020 15:23:51 +0100
Message-ID: <CAFBinCA4VwQmd5msALXUrPxJy9gmeRQ5-5=UdNvx2aCGkPq_sw@mail.gmail.com>
Subject: Re: [PATCH 04/13] usb: dwc3: meson-g12a: get the reset as shared
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_072404_327691_A6D239B4 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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
Cc: balbi@kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 11:20 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> In order to support the Amlogic GXL/GXM SoCs, the reset line must
> be handled as shared since also used by the PHYs.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

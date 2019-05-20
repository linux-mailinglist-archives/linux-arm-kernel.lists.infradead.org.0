Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCE523FA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnsoPSeqmyFlVIE7gk2L49QRZ3+3GqkciJthIVgtxno=; b=KnkbKksdzfsfqT
	TEsyxXTyeLy3bkPD3eLlYQbUFFZqJ3P/jBWhYa0yOBeA54OlnQlMozw65ov+AJ8zsbLdQjH02mtY5
	gu+8UnTFeydZheh/uV7fEyHONJSRotUyxe//T0Lvv3p1IwWrowsyYKEFyEdNGVTfkg0EbbYzImcSJ
	eNKAvWGz7uQcaqVYFBmYo6lw1/pD6cMWIe7oTEvF6RHJVVJ2TSiHgy+bN2gxvNc1aE6tCdCqP9P+s
	NbyOa34e9Hp+qoumOWlxdzoJMQGogN3+XEMmHsTfpzxhvR/7jA9aPn78j3xQqVnmvmlK2JagBZWaV
	3R0eqv6dB/El5peQCWAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmX1-0000DV-BN; Mon, 20 May 2019 17:57:03 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmWL-0007wE-TN; Mon, 20 May 2019 17:56:26 +0000
Received: by mail-oi1-x241.google.com with SMTP id f4so10695619oib.4;
 Mon, 20 May 2019 10:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rnU52g/boLPrvaC7Lk7YTaYbB64jJRa17WqE6kdu0io=;
 b=FFBMXcMLzNQ1W7XGvBM9mrCG3uVVPv93UM2jJ2cU+Gw8mB8DsEWLGIZ5crVU/MgG3q
 NBtAiyHJzyZYwwN3LuPEgk9mSfzk7vx+TK9tTUD08Jib3KeaPUiCSyHkhSQRdZ/1DLnN
 VojNvk9xjunne3HmOwSHC14iV9wXH7QkeFxPPI2KXYUpCrs2L54hgTReRWBG1+b5FGtZ
 d4G1mrXwamY9ASM9BbFsQx161dlXrNUEVTllEK26AWjR6a8r7cvgG/HttBzkUop6Wjbz
 JgKKmhFKLeHY2AJLlzf+SSS6fIEYuKRKtsIbLix6wDVcdbwrKTgOzOyeB/kKbouE5Lgx
 A+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rnU52g/boLPrvaC7Lk7YTaYbB64jJRa17WqE6kdu0io=;
 b=MP3mm7PMSR2kvA5KKqFd58XiLlM6fCG4n5bKqLQ3NSgxd20y3MymIfJ4J2h754swpF
 Gz1lrvqomCrdTO8n4jmpzIWnQD4pyVdb2bbAdM+Xgosq/jYMik3xXYo2yD+Oe124GnQr
 lQ5TR56Ja8GCKBGnZh4ve3yhfUpKNn7pilWuPicslytSjz69TTsGWR/YySvVnOB+1qJZ
 kl+fIxj8UEkx9mlfySoZVoNIbFmpOZpBiZqkHufM9AVXXEk392/JBtp/BE7CsRpZJBkL
 KPArRmzV+EDDi740CFfAxI9+ii9lyEed4r2gbye90+GXfnwe/M48NT/7iXpGmCSMzMP8
 d+KQ==
X-Gm-Message-State: APjAAAWrRo5QX3CDreN8NkkzWD+3yU+qu76nuI6IAT/M7w9L3AV6pJld
 0o3QcUDVVmdp5CHKcqGgKNre8MQUQbCiODelKk6AYDeWbgE=
X-Google-Smtp-Source: APXvYqyYH9R8huiAm/sim5hyCyxvmrJ/DVQgqqT7xw5knwKVl9Xw27/gO6Y6yWwwoU8cGGh4QN3DWSKazlrf/z3G1ig=
X-Received: by 2002:aca:ed0a:: with SMTP id l10mr303830oih.39.1558374981038;
 Mon, 20 May 2019 10:56:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190520143551.2330-1-narmstrong@baylibre.com>
 <20190520143551.2330-3-narmstrong@baylibre.com>
In-Reply-To: <20190520143551.2330-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 19:56:10 +0200
Message-ID: <CAFBinCD2zLRMJqdq=1S-i_KogpXv01eUd9gNR6RsSOggUBN_0A@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: amlogic: phy-meson8b-usb2: update with SPDX
 Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105622_498775_5A4DB62D 
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kishon@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 4:36 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

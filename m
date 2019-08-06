Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2581C839C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5ULXpTaWrV4cp0yu95NGlkWe22VDUOnfu0hfcJQ2QM=; b=UVWJXsLSeKp+Fk
	SR+SGdJtGuyGXLmKq4KTu6t/+LU/HLJuvIWGlraVrHC4ZGTmLzQBVfRXxkfrn0thn/GInFKuP48q5
	yFWWXY9Ksk24wTbTWIHRpEgvhErUmfQzNw5gOQj7OK3QZdu6f2wTavtv0Nm/ab2MNhZsYOgKBON3N
	fm41j044fyYBiLu9XlPZ/mVsajSzlo0Ub/vZK+w8TZlOC/Pp9/0RHhDC9ga7gckz7Du4ktxhbOUgP
	Gn8xnDstOzcUt5zDZyCw7ojqqgwaX8yUJ8Vkz45q5QP2CNYstakIK3DqOqVk/iQAhS9vbisVGqCC3
	5Nt52kqlv1Kcb5P9ucdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv5KG-00069G-4l; Tue, 06 Aug 2019 19:40:52 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv5K9-00068v-E5
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 19:40:46 +0000
Received: by mail-qt1-x843.google.com with SMTP id 44so54770315qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 12:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=Y7UpGezK0Ud1sFcHnTxPRnpHSsAKoECEyD/JfXJH5eE=;
 b=I5CqAKAJvqBMZ7cVCkQIZzJxWZqDXUmJ4fuZDVxnWO0sObj/kWqJbEiCN/DzeHzivD
 8qIms80lB/zz/ShDMd1VDvdRN5EHjP6LkKuODP2W1iTPeIp7KvpeOh3En1pcYoAc3Skb
 b/zSpO5QpmAhh+C24sIQTl8wTjGjmmr2hy0pKlto1ERsY3Q+W6NriEtj+HuB9Y6nMnW7
 JqSd1u8UcvNaomN3QglbfI8msemVHGvNViZ3+xfWbF5a4Qdup9cHeqGz4eEbTGK4PHmu
 4XeeL8psXWyoNs2BhXqpxpv7h2YNndQJsFnQrVsxQfthViC+T/3V6S83+MCSBw1y3pgZ
 1J6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=Y7UpGezK0Ud1sFcHnTxPRnpHSsAKoECEyD/JfXJH5eE=;
 b=Dvvg16HxKfcTANoGnUDdG5WKs98xvD+icOyR50TlqIsRSBaM09iQcDL2XmxFBJN7Et
 RklIwSrLlrGBmVkA+fX7Ig+7BFTlufwDt5bOkkXVlh1rGn5wcgVVkzXw3nE8eN8lcDft
 d3SAYYoCbqaeJkXRpjE7VLm1DyWqarCYphxr88apMN87E1FUGLuKhLU3tvzAysbGCsAx
 r6Uw+zwMo+q04N+OPUXthqTkA7q+4Bf9jLGK+/X9IL0bQ9cCzcAwv43qmmy9O2qWG7uO
 SUudfBY8cB7rSNJzjdaUxXy8E/BL4E3A8m5LXoKqGSSUXxTX1M8vcwP7hsfQ8vkM/Gyl
 iuxw==
X-Gm-Message-State: APjAAAX7fdYCdbjKa5b/z1HpnDud6N8U3heeICUhpJleq7TZjU6nLshS
 d5NiBwxS/QvVuJeJFbAOlMjJ/w==
X-Google-Smtp-Source: APXvYqxi59nkItJAOGN4OwKGOH4912Tt8J12kJYya2XOtlNL8EkJaIagn0XHoE9jbWY9aKFh4K3utQ==
X-Received: by 2002:aed:3091:: with SMTP id 17mr1193900qtf.290.1565120444179; 
 Tue, 06 Aug 2019 12:40:44 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id y9sm37534001qki.116.2019.08.06.12.40.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 12:40:43 -0700 (PDT)
Date: Tue, 6 Aug 2019 12:40:17 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next v2 00/10] net: stmmac: Improvements for -next
Message-ID: <20190806124017.77e0f63c@cakuba.netronome.com>
In-Reply-To: <cover.1565098881.git.joabreu@synopsys.com>
References: <cover.1565098881.git.joabreu@synopsys.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_124045_546066_98CB7AB0 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  6 Aug 2019 15:42:41 +0200, Jose Abreu wrote:
> Couple of improvements for -next tree. More info in commit logs.

Code looks good to me now, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

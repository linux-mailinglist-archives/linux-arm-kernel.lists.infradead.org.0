Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E242824C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 18:13:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1qIVyV5V3y51Bmucl1NG5vU0HeQDs5vwSJWN28ICfE=; b=s7ogBcbKaHwqCQ
	HTSk85kUoCWO34f3nGIzQ97AYWlZmxL2t0yts6YwUk8ysgrd0nR6gy/BE4J+1L1ntmA4eS0q69DTp
	NFEqcFyEYxKq/ARLagqGuvb7Qt9TS2gx4BwxeZM68VNRnNYN1mcZam+rtuegLV2/xweNb161049OW
	atxakrJ3PUEBK31IonbScWI5U973Z/j/7Y0t2kdTc7RP+Bmt/y8dTyFMEi5O03Tqu+V8T1ZLq/h4D
	3DHmy+1NkRozKcXZoEqc1XGYxbLoJn/mO3MCYYe2r6uThu+jwHg6JWVTf7nokkXaS+6iaKldXUGHO
	fNbWUiYP7Tqp119T+WsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTqLp-0001OM-VE; Thu, 23 May 2019 16:13:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqLd-0001GC-Hv
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 16:13:43 +0000
Received: by mail-pf1-x441.google.com with SMTP id q17so3497428pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 09:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=dxcl7qeoBSGm7yM9sqTozFqzilaB2ov2JQxOkdUbcHI=;
 b=h2Owf/A2KjV8Ud+sGliPrzwL6UypMFI8zBq5XI+wlYkZ789Wpy7eO5lnkkBc3dQCWs
 98TcJWT8asc3gMOlX4yAPaldzJs9Th424Mlg78neTsB6g5KGBL79l0jLSotb5j1hBb7W
 ULbuwWls34VU+AgosN0afn6g/hgRPU94NfzxDZ49g18bI3nQC24o9gy21jLN4rX20jGk
 rniUgFaEyLztyEg2wynMy7pVYHbLPasse1kZYojMaAn1CnYu+hmslbg0DvgfDyNivzXc
 fPRDlcHC9eddT8WWIaAro0yypWuKWjviYf6/fj6ezuviK/Tc9r5gdXkMcRcXPpPiOax0
 eUVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=dxcl7qeoBSGm7yM9sqTozFqzilaB2ov2JQxOkdUbcHI=;
 b=UNIJePXTtYxyNYNCyC8DYXMuvP7iMbtFLn3DUR5KWWyLswc/FADkCrg1r9GcgHqzp4
 fbRY3n5QOeLDFvc8+vF2cACIPGCtoPFTo7bjevLHVPCb0SHVoPhKlmpM4w9bEMi1N6nM
 NCinzV9XtaVUoZcE9c+4mYgJt+4h5iEJ0cdrty0/8KXVmjYW1awjrDRP5r4c/6pCGLmd
 MAUiuRatvFqicafNE9HlHIwSOUjhjyTEDv5jocwD6jiNV+94gal9iEjamoCwxF+Qp4gA
 0QZ0TVV9vUV2K09umT6YQKoIWLdF7hdgrzbPkqG2TXbUVKAmnNjlxakEv8e+r4p2MUSp
 JEdA==
X-Gm-Message-State: APjAAAUB7+o1RVm/ASkYgKbFa9ljhYPqD7PBXqud9p9sCNKgOofJvdSN
 clmfN4/0cMU9KsQUn19feQ1zaQ==
X-Google-Smtp-Source: APXvYqx/tCamAz6aS+Mz79lzll1VAvooHEJ3LVVUfQLgtPgLrRHNqNAT4LbZn6jhpfGEP0d6dikK6g==
X-Received: by 2002:a17:90a:2322:: with SMTP id
 f31mr2407129pje.9.1558628020974; 
 Thu, 23 May 2019 09:13:40 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:ed4f:2717:3604:bb3f])
 by smtp.googlemail.com with ESMTPSA id d6sm3356394pgv.4.2019.05.23.09.13.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 09:13:40 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 2/3] arm64: dts: meson: g12a: add drive strength for eth
 pins
In-Reply-To: <CAFBinCBmgTdZBDd5D_rCVQwO4UcJpXjX=Rc+0qgADF9sW-wFWQ@mail.gmail.com>
References: <20190520134817.25435-1-narmstrong@baylibre.com>
 <20190520134817.25435-3-narmstrong@baylibre.com>
 <CAFBinCBmgTdZBDd5D_rCVQwO4UcJpXjX=Rc+0qgADF9sW-wFWQ@mail.gmail.com>
Date: Thu, 23 May 2019 09:13:39 -0700
Message-ID: <7hftp54098.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_091341_681030_C76E940E 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> On Mon, May 20, 2019 at 3:48 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> With the X96 Max board using an external Gigabit Ethernet PHY,
>> add the same driver strength to the Ethernet pins as the vendor
>> tree.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Amlogic's vendor kernel (from buildroot-openlinux-A113-201901) does the same so:
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued for v5.3,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

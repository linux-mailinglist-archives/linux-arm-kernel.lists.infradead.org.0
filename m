Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30737169595
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 04:30:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TjnhXT45vyn2Uv2vX6mbgHMwfeAF3Jl99JYsHtbtwwE=; b=jNO3SevZHB+w/a
	o6DRXJQ/xU7nhcUSkWzvBBUlkggPOhgiV0jTfzIDQwFRNheqFOY5xOLlaqeppSm75kQAx5rWMcQCN
	4St7DlV6Wf05ZVp5t92hl7gXy3xioq2bqBO5u4GW79PAM0eA16GFzNU/klBS3u8s9JUeEuCyxC+H6
	SiUnG2nSn1Q5glK4sTuHqI9Hd+K++MZwZYrftlaCaxPokCDOz5ToWXnHASihk5gYAX1PuCUz0LKlV
	jDoAg/5vsBsflYS3yJxpTuAepetLxyQI8Lx4a4INEQaBLFjXRhoUslKtd00tLH53yRnSACS5Wk+Ar
	rCk+//FyRlJyFfCemJ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5hxr-0003ew-Eq; Sun, 23 Feb 2020 03:29:55 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5hxh-0003ea-R4
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 03:29:46 +0000
Received: by mail-ed1-f68.google.com with SMTP id t7so7575908edr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 19:29:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zzrJPJHbDzjpmj6nIkEirFiKtRK7tw47tQwrQN5NH4w=;
 b=TopcIfcuIQ9farYUYvjd8Z5IimmEHgp9cw/4bk3kRQjVanHNf68LSMzmAw5vNUP2lJ
 cP0dsMhCABzRJWmXmT4zyhOy3Bfqwrrqq6LvRE6D4Ofdfr9xAZZMtE1rHoXWG4r6Rjer
 SolFbsnNjadlSceKGVvhZEiFnmiS6hdD6Kl4GWKwpboZZfGzv9L03sJ+XIqJepJEAvmt
 9KjSNYqwMJKV7aWjOO8/+vmLLjSIMYcFET8ZI32ULtaRYdm69IW9NJn9cvcMXtPIfLwu
 2k5ql/E3eYl6iR3eEWIpoGIZ16yNI7VwqopAde4+ZrGyupu7ExIrhDQzanvvyqK5Oea8
 1lnQ==
X-Gm-Message-State: APjAAAU0f4pPoirKuwn8DC6dHHgeGE32XSDy3R81fKCawSASBVBuETcA
 XfnH53pL6H9LVCyxl2MyM0LBHh8A7fE=
X-Google-Smtp-Source: APXvYqx2Q9b2BOEEyUB/u6EHcFPH1eYfGfAwETKDL7kTPFraWgOxzV8nU4oa7fw7J6M8dVUKxic8UA==
X-Received: by 2002:a17:906:cd11:: with SMTP id
 oz17mr41707417ejb.382.1582428582373; 
 Sat, 22 Feb 2020 19:29:42 -0800 (PST)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com.
 [209.85.128.54])
 by smtp.gmail.com with ESMTPSA id dh4sm758919edb.77.2020.02.22.19.29.41
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 19:29:41 -0800 (PST)
Received: by mail-wm1-f54.google.com with SMTP id q9so5631824wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 19:29:41 -0800 (PST)
X-Received: by 2002:a05:600c:10d2:: with SMTP id
 l18mr13201969wmd.122.1582428581680; 
 Sat, 22 Feb 2020 19:29:41 -0800 (PST)
MIME-Version: 1.0
References: <20200222214224.209860-1-megous@megous.com>
In-Reply-To: <20200222214224.209860-1-megous@megous.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 23 Feb 2020 11:29:31 +0800
X-Gmail-Original-Message-ID: <CAGb2v671FS+k07xWRbr1+3XWNKAsVx2AaWKOrDfyYpt2Lf-gtg@mail.gmail.com>
Message-ID: <CAGb2v671FS+k07xWRbr1+3XWNKAsVx2AaWKOrDfyYpt2Lf-gtg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: sun8i-h3: Add thermal trip points/cooling maps
To: Ondrej Jirman <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_192945_873367_639B37B7 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 5:42 AM Ondrej Jirman <megous@megous.com> wrote:
>
> This enables passive cooling by down-regulating CPU voltage
> and frequency.


Please state for the record how the trip points were derived. Were they from
the BSP? Or the user manual?

ChenYu

> Signed-off-by: Ondrej Jirman <megous@megous.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

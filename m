Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0998CF1E7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KqQgOtowtYUnoQMHKHxTkFgicLzXpBNYz7vJS19jLo=; b=SwNhBCU1l9bCma
	avqD3KzMK8wdUPsJYPotdygJVrLx4CgVZJLNpsYCRiTFARD+QZ5y5V53LqiNXjrJrEI9tG8dAsR18
	clm2vbgcCov/X91++tM5rKrftijXqpOmpV/Qvv3wAhGXQOukjM2a8JiZkd14pATmxacGE73bY7EaA
	nTV2m41Lt6Foje6HgZP+lv+VPouMHNF9/2qr866YKxL8tuHOs+wdC+sZrlnxzgRH+pucqNVtYzk6G
	TTsY6Af8WAkpAiG9HkS0/4WpiiBsARCRR5nHwcVrXFXr8a7YgkPLHqAZAxNcjiprZr/52zjRuIaai
	W2x1uNRBIeJHSYwAU/ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSQox-0002XN-Is; Wed, 06 Nov 2019 19:18:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSQom-0002V6-LG
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:18:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id z19so4830271wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 11:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=PU9cgonQbeBUlqD6smuE3HVC0qfgvpeOW/hibhDm86U=;
 b=pNzIfW2lSQa0r/h9lm3RqqX7bh074trKmxFhai4BOlXwBi3iPmBUtxEuI9KxpyeYCg
 DFxFVmbUnm2l1vmJyAdPNU1CwnyV7kcJ/fbddZ8WUTI6Bc+XVGW7X4Ebb3PfGioEivI+
 yzpD7F9urWPbI6eeLuFqYuRPlKuKCmrqQMYmUc41cR4ghL9o0bzJ3At+hVLGbGkneHox
 rAf0NakMMnk0FRzD2P7NC81JmwgWzjQYmewAzo34RaJzLO8AHi7D6sdI4PuaHlCXEkqZ
 Qyk4+41Ag2Una8+y8uxScUg923YYDbrTRMVGBY2vcRGsRGZCFy9SEsz7RgeuBaHLNCde
 Oq0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=PU9cgonQbeBUlqD6smuE3HVC0qfgvpeOW/hibhDm86U=;
 b=X4YlPA+gbOyq0PqHwXBoDscQ+AQ92o2nql2+QRzLpK/+genPkTKt8EkYuicb5InQDR
 ImVJJhk+wQkKRVF6OP2KRF07NqJ2qF4lwJ/Gr+phIJ/DWBiih9M4lnjIF3kJFf62d27Z
 vPHxRpCVhkCEgQy14F0fHsJ1WqEzKg5ApIsQCKmEP9J9773KRmtfNQDlttGxwNHBIRkP
 bbHtsuejvRUAnNLhEafXpScRU9HWYzFvpe+fQAJ9zrh0SgGedMhA/uloNTJzk9TftuEh
 uZKIpC/v6xvaJUGMz05XUjyTiyi1IQuF5lnytrwHXxDTi85ommZTCDdaCu70ApGHLspS
 GKRQ==
X-Gm-Message-State: APjAAAVYs6hNsOQ8s3S35jNdqnna5YEx6oJp624HCXb+Hy+ZQP1SLZTI
 fhayKgSXld85SYl3CI5fjA8/fw==
X-Google-Smtp-Source: APXvYqxkmHQPv2qjioyUcDooANq4YwZdbLDpJXqEm7lqXEUgckuPqSHnNkueWlA2awFRBwWXBUkVkg==
X-Received: by 2002:a1c:1b06:: with SMTP id b6mr3930121wmb.3.1573067891320;
 Wed, 06 Nov 2019 11:18:11 -0800 (PST)
Received: from localhost (amontpellier-652-1-71-119.w109-210.abo.wanadoo.fr.
 [109.210.54.119])
 by smtp.gmail.com with ESMTPSA id 200sm4974176wme.32.2019.11.06.11.18.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 06 Nov 2019 11:18:10 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/5] arm64: dts: meson: new fixes following YAML bindings
 schemas conversion
In-Reply-To: <CAFBinCD7NzK8EphtVTx77aSQxRytm4F8JhzbJMZ1aXfaQyFVMg@mail.gmail.com>
References: <20191021142904.12401-1-narmstrong@baylibre.com>
 <CAFBinCD7NzK8EphtVTx77aSQxRytm4F8JhzbJMZ1aXfaQyFVMg@mail.gmail.com>
Date: Wed, 06 Nov 2019 20:18:09 +0100
Message-ID: <7hr22k6cge.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_111812_700999_08E6718E 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> Hi Neil,
>
> On Mon, Oct 21, 2019 at 4:29 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> This is the first set of DT fixes following the first YAML bindings conversion
>> at [1], [2], [3] and [4] and v5.4-rc1 bindings changes.
>>
>> These are only cosmetic changes, and should not break drivers implementation
>> following the bindings.
>>
>> [1] https://patchwork.kernel.org/patch/11202077/
>> [2] https://patchwork.kernel.org/patch/11202183/
>> [3] https://patchwork.kernel.org/patch/11202207/
>> [4] https://patchwork.kernel.org/patch/11202265/
>>
>> Neil Armstrong (5):
>>   arm64: dts: meson-g12a: fix gpu irq order
>>   arm64: dts: meson-gxm: fix gpu irq order
>>   arm64: dts: meson-g12b-odroid-n2: add missing amlogic,s922x compatible
>>   arm64: dts: meson-gx: cec node should be disabled by default
>>   arm64: dts: meson-gx: fix i2c compatible
>
> for the whole series:
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued for v5.5,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

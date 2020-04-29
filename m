Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CEE1BE632
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:23:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2EctzbX1+cZwQ8QgAiuklXo81cFphYEBzCBl+79exc=; b=Dtk/i1eW47jgS7
	I+QONSF5wnNAcYR+NKaUNP1oXTZK2Psi7n6YEFfpycS811kqoFfKWSyWAEPA5L43vNu6P8GyNQsf3
	mAvFpzQ8lNlqkmrw25DBbNOLAIOIJLIb/hH6mVyqLhht4Yl0ZC6Zlp9ArH1JpsdR9m7FMnj70xbaR
	zLlK0MDooEts2kR/C7YsjJ92z8CFej2icUo9x5+nJg5rwku4x7Qws41XZvIOMSBZ0pobEwqBDbYN3
	nudsS/tm4Q6Nl8US1JBB6f1fsN0DE0/VApSm3eqa8AlP/BesU23g8UGI9zFNx3FJ0IhX7s/YvpqUF
	levgYCb7GbMvzA1W2viw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTrMb-0004VJ-Nm; Wed, 29 Apr 2020 18:23:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTrMG-0004Eh-70
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:22:57 +0000
Received: by mail-wr1-x442.google.com with SMTP id f13so3678540wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 11:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=B4AExkQ/skCkgH//SVAJ+HY/UbjZ3z29vi0E6Yau+cc=;
 b=YRJMFTxbM0bgeSz3RuGdHJxxLuwdgSWTgLgtoiXIweL8tIX9FGlQlYaJuSUPBBJz0K
 jPCUAaMxuGVVpRauDZzmKr/3YoCbJ8dGgBs4OfNCURbd46wqVR17diEUaD4lxblwDd9c
 rsKW63ZlF0YCMIMPUQT6JYhjBEUCvhRkmQ3tlpSdKpy79JwByxKi2bPbiCo5G2U3xqLz
 bjiHLqA6rzM3UqfIv4hcmbEeqCS7uT3R8NzQ6ydkUH7wkEtNdpeSvRd8rckqycaIWWkv
 L+l9Ip1j3qWw+VwY+VJRYHlAZ2TU9W196zkfI5yFx4ESXLU5l2gnaJVEfdhvY5u9L8F+
 ZjZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=B4AExkQ/skCkgH//SVAJ+HY/UbjZ3z29vi0E6Yau+cc=;
 b=ZHUaCq/TH1lMPcQVFTtVIQDjjY3X3OoHybMJ6Z/BD0hANGR4/OnJprVDPM/M/5pQIy
 +snn3I6o/KB8bpaeM2teoxnactuxJfjCKkeJFcdJQV3l4tgaHICIlgnGk3bN27JLzgW0
 olt4onGlkOf+luXtOKuF1hrncaKZnKXDdaNuFbsGekzXvLQriP6Dx4jxVQu0BXuaHkKs
 TsyQXD6GNKncfOrtfWBNzBQ9oWco2cCq4Xa1S7w9GOkCZbaAdvkxqFG/NR5timq0Fm/S
 lxHPwtP4kacKCTuE3B1RlPgBnn6c3TALrtfjujyqbxl6+v7cGAwHMGr97vgBlhdWsPfZ
 Alww==
X-Gm-Message-State: AGi0PuYbHEyyEsoxcDNbvURFwzOWJMhPDm6i1dkToUe2b/ERvL4aL29n
 LGIhjUwHNAdytyBiCGDxts9mmg==
X-Google-Smtp-Source: APiQypIgFkCETUKcnEqx8tMuAByNY5IhjOfevdMmAgkZMz9mukDUiKUpnYW6PV1StwGdsiqRyq/pRw==
X-Received: by 2002:adf:8b1b:: with SMTP id n27mr38786679wra.385.1588184573262; 
 Wed, 29 Apr 2020 11:22:53 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id e13sm117683wrp.15.2020.04.29.11.22.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 11:22:52 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/2] arm64: dts: meson-g12: usb DT fixes
In-Reply-To: <CAFBinCCwvfycP9VZ35Jn=yNRbgbUYkRucLPpRGCJv2XCTR+o6Q@mail.gmail.com>
References: <20200326160857.11929-1-narmstrong@baylibre.com>
 <CAFBinCCwvfycP9VZ35Jn=yNRbgbUYkRucLPpRGCJv2XCTR+o6Q@mail.gmail.com>
Date: Wed, 29 Apr 2020 11:22:49 -0700
Message-ID: <7ho8rakv7q.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_112256_260512_52F23086 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

> On Thu, Mar 26, 2020 at 5:09 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> Misc USB DT fixes for G12A.
>>
>> Neil Armstrong (2):
>>   arm64: dts: meson-g12b-ugoos-am6: fix usb vbus-supply
>>   arm64: dts: meson-g12-common: fix dwc2 clock names
> for both patches:
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued as fixes for v5.7-rc,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

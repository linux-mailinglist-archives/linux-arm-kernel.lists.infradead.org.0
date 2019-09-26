Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A2ABEA67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 04:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zzjd2udM/qVpBj3p1RaionmZ9ATQ+qtVBZVvjZu/ByI=; b=Q71mCXxGvUJTXr
	koFg+Y00pbviZnV47E0XM1Gao9ZD6fjOvbtkyG1ug+BWqFMpSdTEYD/FwUYgQJ5mpKECM+6Jw11SW
	lEVZj0bA4mLgDUqjwCWr8YoDZS+Grp8YILy7aDvh5X3PEEt2og+fVmePClUfJV9cHiOcv/hFs6oIu
	60VjOenQgRZF6uzRqvNmskvfqcioUvTGUX8/P3G4+4wtVvGES1BjxCNu9Tg/8QPxCMGEggsn+p2lO
	7yg+yEwlxOiSNqu4GYS7ogxk36XXxppzmZOY3hVWyPosZNrlJf2jhqLVsL9ucSa5hWU13TloxJDIc
	JbUeFYGwKud82dYrCGwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDJDu-0005aO-Lr; Thu, 26 Sep 2019 02:09:38 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDJDe-0005Ze-KF
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 02:09:24 +0000
Received: by mail-pl1-x644.google.com with SMTP id q15so311120pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 19:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=4Qvr+Vq36lJK7eT6do5ApSmMPZYoIZa8xsw9/sgUwoA=;
 b=CxvxN1Ogf01q/7maIA+Lps+CDXG/nyEYsAaIxrAqtTBnkzCyjIWSN4lNyu6m5WU7fU
 AAisYDU6GvpyuyFuhVx9OGU0JOBF4jCcnQq7H/ol4gq1d7ObG3zM/btlwhflxRrPBcJm
 Zz8YTv9WfqZcPH8zc10iV+kvExXG2VgYiKAlEpCo8eHFi4a2jy0qQXEU0neryX5nsgiU
 bAAKJFyH9ItwH5NHZFDHeu9nwOENXyJFOvQHImXYdIf3wI0pUNsUxOTN6hk4Yo4h7uLD
 ET8l2bTm5+YYG0HVlWQzRYHnhD2KUScW9c48I4te1HYQkqGbHPPHnJaROjwHhNx4bTVT
 vg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=4Qvr+Vq36lJK7eT6do5ApSmMPZYoIZa8xsw9/sgUwoA=;
 b=XKvq9t2MR4vYo8cy1hwntjBT9kwTiRsNtJ3c1rfRWkkYhr8mU7OVWSIsWQ7rhUmdp9
 1Y5IUEqdYtlSeHULGRUWiPhIookcsGCfUeawA111bj7hgv4IwP9cNC7979jA9GAUZ41z
 P9/K4IlMVr6NbMqq5rujtCHbVSigvQwESdSUzefFHe6gcAy6Xusq2FiotIL1txxfgwD+
 5rDLfw/VhBiyP5Se96uJEuFGZzT7yYt23fB3+rC0x4i7b0dI8oAvtxD1IJsNsiF77+E9
 TkQiirhhJAp8NkWOIeXUAv3iV35tFRMKjn1Ht2N88ggxJQT8vs6fkbQald7cgqn98LfX
 LLLA==
X-Gm-Message-State: APjAAAVile2rf9z9gLZxUaTv79deooGCC0+Pmoj5ruGd0G56kAjmfCDY
 tKNT9a/TtUfMFewDowoBzTccNA==
X-Google-Smtp-Source: APXvYqw+uH1sv1ftk9JTvni+8fEIkYi1Eg0n64bz8iq+sLbx2N8otKyBHJqizMA2EP+GOJW2vHjRDw==
X-Received: by 2002:a17:902:ac98:: with SMTP id
 h24mr1668421plr.64.1569463761775; 
 Wed, 25 Sep 2019 19:09:21 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id c128sm332461pfc.166.2019.09.25.19.09.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 25 Sep 2019 19:09:21 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] arm64: meson-gx: misc fixes and updates
In-Reply-To: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
References: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
Date: Wed, 25 Sep 2019 19:09:19 -0700
Message-ID: <7himpfst9s.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_190922_805977_DF5902CD 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chrisitian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> This patchset:
>
> - Fixes bluetooth on Khadas VIM2
> - Fixes bluetooth on Khadas VIM
> - Fixes GPIO key dt on Khadas VIM
> - Updates model for AML-S805X-CC
> - Updates model/compatible for AML-S905X-CC

Queued for v5.5.

Thanks for the updates/fixups,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

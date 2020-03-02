Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 965EB175F7E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 17:23:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CZ2v5NUz0g9/QJtFRudm7psg00WFR41fWjDS+zFHMQ=; b=OAGxdrXzg+1XZM
	CRsVuRBHIUprCY8S0WvZ6GO0V3F3s0rc7ohi7cW3JPVjB4c30kadD2phkWTOQLSjDZDetbtlathKR
	RAe3e1ThRL6up1Jrb9MXMlrVUfzYQlAw4dX8fVlyM/LmB2b8swQCeWjhVMctjb51iRwRXSGGeHafz
	PHoN+bYRQ4u1rRTicsg32aSGY6j+54NUCK735yZRmRZwwaINkoYdulxMrSY8FAJQYZOE3kETpm4k7
	uEBz4bjeVoprmS6ENhHsyV1ErbVn+ZjR/rgbxrGD2OlpANFKhdKXMt/QDVP/YBfYOIqV1dcraEeQD
	riO4znwALnRMuVMsx5bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nr2-0001QT-0w; Mon, 02 Mar 2020 16:23:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nqu-0001Od-KY
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 16:23:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id n7so411036wrt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 08:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=7dhtMCeqCCrozUAR7xWCIRbtdQoUsRNHKe3qSBD7eVQ=;
 b=KaJyPlfL/YL/9IzhgPdg7VRoSA7LOYbGnEm5sD16nPwvywgw/HLr/bDtR4FfsNsW/a
 6ASEkqooYQDr/nEMmzqnEbo4tfjQNdWmVrBDJjijwQxIM691mp2AwBM6bTJ1u+JZ+xDE
 GaVEo8Z+dEkN5CvjjpJduUgwMabGNiBqHWb7IhFQ9bN9Nn3wNVuBUtaz/PRNLZUrzDKU
 YNj2bOhLVym29ovWeg+gHxcz4GP2iEzej132wvegafj2QR1PdOIrD9GMvLYX2xSgrLzU
 XZI9V9LQjKtUP1Bz8GFfo1hZ1Ir5mY1RpNrO1be4JpShfuURRfd+GQLG/qI4djgTlmDT
 7FCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=7dhtMCeqCCrozUAR7xWCIRbtdQoUsRNHKe3qSBD7eVQ=;
 b=WhA43DU0sAHvBqKVnVSBstTShmome3m/SUXdyrFeDAdJf/rarSsOQhha2May1daRvh
 avSD8wZ5DCSEgBRvl38ot9UJZKilY0GorN0nHj0sZWmiPjAvad5FA03GIXDbzK2T5ldB
 LO1SY04cadP7Abgvh7TZmIgfrJrdDRkO0sjVzsFKd0syxgWFHZnhSsFadbowHIQ1DzGJ
 TXtzTJWZpcng7Kmh9L2yfCmB8/YYUz05IYfafwK1VfNEH+CaLTx/CxGd4AcJjNX4Y2Sa
 8/GDUO1Ws8dXcw8oR5TGzZWphUR2dRlX8hlFOK1aDQ871euAvykmPu6WTdR2KRnyiyiR
 5wAg==
X-Gm-Message-State: ANhLgQ0OYPQ7qw0f4lDdE1pqlk70nF0TOLt3Rd/zLYTguH38IPxKLh90
 BvMRm1b2/LW2ln72LPyVa3f9lQ==
X-Google-Smtp-Source: ADFU+vs0kNer+mtpZoTW7AZ3bv2U14dkD7HjJHBJ4bHZFfi3uzwaxEhingENvYB1CplhRWLQ9UgEcg==
X-Received: by 2002:a05:6000:14d:: with SMTP id
 r13mr355801wrx.63.1583166210659; 
 Mon, 02 Mar 2020 08:23:30 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id n8sm27622995wrm.46.2020.03.02.08.23.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Mar 2020 08:23:29 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, mchehab@kernel.org,
 hans.verkuil@cisco.com
Subject: Re: [PATCH v6 0/4] media: meson: vdec: Add compliant H264 support
In-Reply-To: <20200219140156.22893-1-narmstrong@baylibre.com>
References: <20200219140156.22893-1-narmstrong@baylibre.com>
Date: Mon, 02 Mar 2020 17:23:29 +0100
Message-ID: <7h4kv6sp32.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_082332_675944_688B2BDA 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Hello,
>
> This patch series aims to bring H.264 support as well as compliance update
> to the amlogic stateful video decoder driver.
>
> The issue in the V1 patchset at [1] is solved by patch #1 following comments
> and requirements from hans. It moves the full draining & stopped state tracking
> and handling from vicodec to core v4l2-mem2mem.
>
> The vicodec changes still passes the v4l2-utils "media-test" tests, log at [5]:
> [...]
> vicodec media controller compliance tests

Tested on meson-sm1-sei610.

Tested-by: Kevin Hilman <khilman@baylibre.com>

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

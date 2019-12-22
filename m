Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF4C128C91
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 05:36:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aE397LY7pr2kpZhb2R1DdUH6jBhNL+Gpk+8s+/w8WrI=; b=SoSQaFOKGR4kMu
	oA2q98+VaVuRJIYl8C+iwctW8ePBOsymfxQCDxPtmnCfOdQqRvIZjF3YPzwKDyeeDyjF3qp+ylU8/
	W1XwyWudO6USC/VPO52TNrXO8QBDo8UMIlKyrsH1koqnhUrrnep4CGdZWWR4eXHnWIj/+PJE2twnX
	k8juwNziCenviszdbRKf88ZQwWtV/2C4zypm5JPfgx0A36d4ACoN/c0IOOdRLrsPkwhebHLLmfXhw
	8XtsS21JRydOe8PmhH6GMiiUgAa4ciEuiVUFfH0apVuYLPPZQMhs8pbGx2cDIdmvtr+ZF9xQOUVQk
	HCNlsniIkPd1TJivL5vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iisyG-0000UI-Nn; Sun, 22 Dec 2019 04:36:00 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iisy6-0000Ts-1D; Sun, 22 Dec 2019 04:35:52 +0000
Received: by mail-lj1-x243.google.com with SMTP id z22so9547484ljg.1;
 Sat, 21 Dec 2019 20:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=COqV+F9ei+E2oY/KUB0AC+nOpaJlD5cnAnx3su+cln8=;
 b=Cv0SnhHugHFXM1wehyT8ZP9WXuaIPyVcBG6QAPwrblORdbVMiTAq5PHe4q50nyM/yb
 7uEgLheCNNJx5Q34a5dRlsr3bz70WQoFgnfd0vNUZc/DPyzWEnmrb/N7VVxEpHzA6gte
 O8jawT7C5MPN4poBDjy1xgqL74lKqd7+xQmN5rVfGQIr7BuYYHWMPG/V9aqYIthcXXSg
 cazi3FoZXNrpwOAhTN/CBxTcxmMwWW7jMBTMGZcf16SPjrPx+z7QlU9i6arOrqjdSYZ/
 N42CdQnpuBqd4eOwRVh7LrPJAQ2OX3lVzj95Ewy1hLSsPULxOhX8qH2uuHbXR11a+KCJ
 /oyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=COqV+F9ei+E2oY/KUB0AC+nOpaJlD5cnAnx3su+cln8=;
 b=ZZh6Xxj74NT01AAiY9nHJe2N8hZRYor+DkLUC65vlV8WqJI5ptYbGS9Sb4ZTol9YYc
 JSQFTBPboiR4GPeDqIuDQwCLtIEO0pTsQyqUHWSAsss57Sc69FATpE1mqq4YuAA4X2k3
 jhiGT9m6Hcskw05RNbzyDpJrlBMyC+aa2DSYzTcx2ora9vi85is7+uEHfUmjVVjwjuie
 o8Okm/PNbYsuGY+CmO4mcu9z/s7cNh6xLoClXnNMt3rup5X6EUsOfQC+v7MLk5cNi16P
 SfhQ2jLyNAA8Suf1IlPKYsaO5uT6/top/FcyI5q+QFZyqb+wBBB+/xGZmCPiucxDgq8o
 L09w==
X-Gm-Message-State: APjAAAU3i9nt4DLWzg2Ybq6dIuPRkXkJpT4GN4CHFXDeWbVWNjz1DL5g
 Tid1RmFbREZx27Y8NDymWqU=
X-Google-Smtp-Source: APXvYqwwHNpyqONsjbrnnDi7Do8gsYy7HpNpEiploEtWoEqRQpQQl2rppymPVsg7yDY255l1Q74Klw==
X-Received: by 2002:a2e:88c5:: with SMTP id a5mr14669392ljk.201.1576989347408; 
 Sat, 21 Dec 2019 20:35:47 -0800 (PST)
Received: from [172.20.1.19] ([5.42.224.242])
 by smtp.gmail.com with ESMTPSA id g15sm1827895ljl.10.2019.12.21.20.35.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Dec 2019 20:35:46 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <cb3ac55f-4c8f-b0a0-41ee-f16b3232c87e@web.de>
Date: Sun, 22 Dec 2019 07:35:43 +0300
Message-Id: <47DB71CE-ACC4-431D-9E66-D28A8C18C0A4@gmail.com>
References: <20191211235253.2539-1-smoch@web.de>
 <D1B53CE9-E87C-4514-A2D7-0FE70A4D1A5D@gmail.com>
 <cb3ac55f-4c8f-b0a0-41ee-f16b3232c87e@web.de>
To: Soeren Moch <smoch@web.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_203550_102743_3F281723 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 brcm80211-dev-list@cypress.com, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> On 19 Dec 2019, at 2:04 am, Soeren Moch <smoch@web.de> wrote:
> 
> I guess you need similar enhancements of the board device tree as in
> patch 8 of this series for your VIM3 board.

Wider testing now points to a known SDIO issue (SoC bug) with Amlogic G12A/B hardware. The merged workaround for the bug was only tested with bcmdhd and brcmfmac may require tweaking as the same issue exhibits on an Amlogic G12B device with BCM4356 chip. Testing the series with Amlogic GXM (older) and SM1 (newer) hardware to exclude the SoC bug shows everything working as expected.

Christian
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

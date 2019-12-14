Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F5111EF1D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 01:22:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orp5SjMt7KC0Y/If4VFjpzFUhDCzsl2zReaYdvnkANg=; b=Ne+CjXffG5rcd6
	t/pFOZo5438X3eOjQcUKcCxYpiULKDDHFlClWiJJCPm+M1JoHl8igNU7rLaANcsLy0Btf+AZHpCVG
	YOyCXlVU/fZQPEzXn0whRTlAiFzoPxrjClS7UWuzti/U+itbGPtsXITbL9iRBgXwvSpvvI7y8xQtG
	5FWmRhfelasCLY8o6QlV/auNmJfb2p+iLWqiu+mBbBoVwMp32+LMCBbemJuVwkvZ9OFPp3Ujybu7g
	lfvagDGdNB96cxXYjEY9qt9wdLSquBBu8jY9/Vidvw9CDMAFr62P/BAx2fSL4VN7cQlRQKc0DId6P
	Eefv9Szo1bXsKnE4H3hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifvCi-0004zb-Kg; Sat, 14 Dec 2019 00:22:40 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifvCY-0004xp-K5
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Dec 2019 00:22:31 +0000
Received: by mail-lj1-x243.google.com with SMTP id z17so519902ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 16:22:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=giiBxdvWgaNqH68xnv3JmWP9dzCBTdZ9klmH0YITisE=;
 b=moDlCKvuxDXDzEEAIiXkhQpF42yemoKEbL0AZF9wNsfDWxNqQ6PAyC79TcuJE7Mkc9
 Zd8qEd4kDdalk1yWC0H+Rr1MJ1/Yx0Hzhn7Tx0fCPyejRdP0cH3t3Jq5V7nYVWtI9cTR
 S7EOX9jtd1eh7m3Y6RLy5trfH8sioerQknIUhEUlEwtfb3Rtt9vMYdIm0xtLws8vyLIo
 8Wz5AZza9+t2BnITvbK6kvG+AWHbDFu93SVokmMiCVY0e3lv9bI1cVEarTCu+TarLpw3
 brGJ7zEjLhMXpGfaQjutJUx6HNe/0vR1nl/rzpmdY6cIp+tWFtL5Bbuhd7ElwsD/eF6b
 WE6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=giiBxdvWgaNqH68xnv3JmWP9dzCBTdZ9klmH0YITisE=;
 b=qRPK56wOszn5DIi7bo6yeF7cnOgmcZ2f8XSx3jPv53ao84xQg5sO46ep5ebX6/hDgp
 zhlHCOMhj0VyP4t3Rqrg4G1g6MG49gw3yYtijNicYdO7NfLg6I0b+4JQMtaoDPjRfFRC
 ozneZyFSRbOZKm/pivNNx4nb1XYVkQlh2F7OFLEQK/HokdC3lXiKeiFkhj9R7GdHFjri
 Qzyf2R9Gj3HNcXBYCTjmObN3L8jKR3T+q+OuVHoRMZpjV+g+PFpnUYmStvCGqmbl93yr
 BHowgzpMfztaODspBJKsy/PDJZ/ss2Ag2Frb/CZSaBDGUBxsQn5BeS6zZsLfkW1PTu6G
 nMhQ==
X-Gm-Message-State: APjAAAXzfl+VAZVsc6kNV+AKY84jRwqCHEiM8xIsgPQmHPsQS167IdJy
 H5OmEKdZdAzsCKm4jx6oy9eGkw==
X-Google-Smtp-Source: APXvYqxk4KifralwNEGO507iNNuOIWFqTEHw/xBJIq1aHCZdSobUATGCeEfnlG0VPQmTb1fbDwOe/Q==
X-Received: by 2002:a2e:9a11:: with SMTP id o17mr11430388lji.256.1576282944630; 
 Fri, 13 Dec 2019 16:22:24 -0800 (PST)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id k25sm5583547lji.42.2019.12.13.16.22.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 16:22:24 -0800 (PST)
Date: Fri, 13 Dec 2019 16:22:16 -0800
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net 0/8] net: stmmac: Fixes for -net
Message-ID: <20191213162216.2dc8a108@cakuba.netronome.com>
In-Reply-To: <cover.1576005975.git.Jose.Abreu@synopsys.com>
References: <cover.1576005975.git.Jose.Abreu@synopsys.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_162230_802034_8B87B293 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, 10 Dec 2019 20:33:52 +0100, Jose Abreu wrote:
> Fixes for stmmac.
> 
> 1) Fixes the filtering selftests (again) for cases when the number of multicast
> filters are not enough.
> 
> 2) Fixes SPH feature for MTU > default.
> 
> 3) Fixes the behavior of accepting invalid MTU values.
> 
> 4) Fixes FCS stripping for multi-descriptor packets.
> 
> 5) Fixes the change of RX buffer size in XGMAC.
> 
> 6) Fixes RX buffer size alignment.
> 
> 7) Fixes the 16KB buffer alignment.
> 
> 8) Fixes the enabling of 16KB buffer size feature.

Hi Jose!

Patches directed at net should have a Fixes tag identifying the commit
which introduced the problem. The commit messages should also describe
user-visible outcomes of the bugs. Without those two its hard to judge
which patches are important for stable backports.

Could you please repost with appropriate Fixes tags?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

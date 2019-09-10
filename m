Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9B5AE658
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 11:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Id+Dmy5ez8uM1ReQneyZdNGdh21GAExi98b5+IUg+Vs=; b=ECWuWSngeumbOs
	PwrwIQ7A8JqC/OyISdOIXWkCdp3FSUc9u5w/ZwJianKUlMss9pflVjBusyt4kzbW0qWJG6DQCbw76
	hMkp6Yl6xw/tmEXd9vFKBXd+QrNqLT9QPZSwyLGLMoyprmrFql5xrXMT8WAEZE6gyeoGqOTpkuhl8
	Zgb0Bp9ormW+4v6V0P+uydxW3iKfhvu3MpJjJ7b+9yU0dn+DIVVbfj9Qup9dJYriuVzfjp30+WyNy
	41U6Q+J0YoZNUDPC0sNamD0/lg8gL8Funv9rCvjtPDbLng+ob/W/MosxObZKjNiW9Lz2irQKLE2qv
	cq5UWe7sI6u/UcojyOZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7cAm-0005ON-Qx; Tue, 10 Sep 2019 09:10:52 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7cAa-0005NU-3d
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 09:10:41 +0000
Received: by mail-ed1-x543.google.com with SMTP id f19so16285263eds.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 02:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Iez8yZGFDi4oceFiuNT2xGD/UPWI8Mn1wAE4EZBiLGs=;
 b=TR8pm1x+5+93McH11wJzi98SRcpwX5O2y8OG42hvagT/7UHiVtW74HMGcwPXJf0w7w
 Cn/lBBy9lD0+a7/880e7d1bukGpYVoiffeuNMtO4uCUjgsaO1QDM5OXZ7vAjJXCmCZBf
 0C3LJWyRj++f193R8TKq7WnBTx9mP7PZ+ipVafA1tfCFnGBYz11HYgU5XTuffl9M0q77
 37d590kwYGCiNDXpAWRB06js2XfjxPKlJVcbyLIzRqjFCoI3DPkk3fEGVoCsNMEuxt+m
 vPhmqXKJXvkOAhLiQdPlCSlO3p1Z1SWiiL8Xcy+XjoSFfzFlXHja1JiLUV61MJ33GZkW
 hqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Iez8yZGFDi4oceFiuNT2xGD/UPWI8Mn1wAE4EZBiLGs=;
 b=o5GwKwE6Bep1YM4SRt4WwXn4HZUkAuto4kVJpzNXYSrUxcCSx18q61mIJubZPHqbzg
 RXR3SAbCcYfH/b2wOqY4LGM6fn1vlSb2IIir+hY19pDzuVR1RQsh8UyIV0VNhhrLdpF1
 47nMwy72xdz0Gi2ZBIUAA8qgABOWyjI+821u4S06PzF447lFMrBUUSwECYFonG3txcr2
 tLigZABTdxr+TAPO/ef61hml3MRlMXxYps1v95w2Tc24ESCBHzCfvzsDLbsEC93KfJdL
 3IomnAu5wcC+TgKsujp19IlQUYHMb2qO5lSRQFdI01FYNO/KrDjyVVGa1IwCoq5iGZzs
 zleA==
X-Gm-Message-State: APjAAAVEX2yzisLNdMJIWmW1Z5UyQq1Hp1sGZDuAfRXSx3kWcOUmTjlr
 qJyz8wV2a1uQyZ/SlW7LbFOCO/ICMUS2XVHglRH8NA==
X-Google-Smtp-Source: APXvYqw+MTXYLCZAfKQw+KljBbFHBLzEFXSK8JFfP6Xtr05eeItHAJhmdBtQMKUlIJDozLSmFBiEb9Xc0kOqfyUvFTE=
X-Received: by 2002:aa7:dd17:: with SMTP id i23mr28774906edv.124.1568106637988; 
 Tue, 10 Sep 2019 02:10:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
 <20190909181221.309510-5-pasha.tatashin@soleen.com>
 <e2ceb43a-d7bf-e0c6-c3ea-b83c95ba880d@suse.com>
In-Reply-To: <e2ceb43a-d7bf-e0c6-c3ea-b83c95ba880d@suse.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 10 Sep 2019 10:10:26 +0100
Message-ID: <CA+CK2bAsW0ExS2a2ZaGUmF2igKE7TM0qdCSYMaJn=0+pkM7ugQ@mail.gmail.com>
Subject: Re: [PATCH v4 04/17] arm64: hibernate: use get_safe_page directly
To: Matthias Brugger <mbrugger@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_021040_566198_899143CF 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> On 09/09/2019 20:12, Pavel Tatashin wrote:
> > create_safe_exec_page() uses hibernate's allocator to create a set of page
> > table to map a single page that will contain the relocation code.
> >
> > Remove the allocator related arguments, and use get_safe_page directly, as
> > it is done in other local functions in this file to simplify function
> > prototype.
> >
> > Removing this function pointer makes it easier to refactor the code later.
> >
> > Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
>
> Reviewed-by: Matthias Brugger <mbrugger@suse.com>
>

Thank you

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

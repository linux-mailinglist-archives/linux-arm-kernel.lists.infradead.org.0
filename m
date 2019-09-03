Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEBFA7281
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 20:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5wnPdVACHCmQRhAKEjh9JsPg/4x2Ir+aWjBqb3TALo=; b=aVXTCbyU3+anl8
	Nr7PbMb2ZSMkMEQAadOADWK2er6YJtwCSGeGzOCtrk2oyellXrcLtpY+Aq2vF5SKLNUw22QY98i5V
	BEwiLlGg4dFrpeo+hhUmqpsOq1N1DnCvqxH5HYsWyCZScXwBa2fLb34ack3FYJUkecOb7zB+pcgkQ
	v8jeZ4LCLqQqSgyw+oCmn6mlv2aBOno4qm2+fqEbtGH/W1yPG/VGjFkkyPrjYWDT6o0squXbF/PB1
	YVbLD+loaeq0muIBGRX30b2yUNv3bZdT5olrDUOErifs9Bv+Ug+w8qYroTN9tb+kL9JyZU6yuRiQM
	T68tlnNnIN17V1ekfF8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5DSn-0004EI-N2; Tue, 03 Sep 2019 18:23:33 +0000
Received: from mail-qk1-f171.google.com ([209.85.222.171])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5DSc-0004Dc-AJ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 18:23:23 +0000
Received: by mail-qk1-f171.google.com with SMTP id q203so7703331qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 11:23:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zohwHGXzinCU41mjJruVh8wtJtm4yrTq0xVkiPolw/A=;
 b=mqgTnvBgYpCAryaAYZsoDbnGbdJh+Gw/M4GwF5Ijw6s8IFA2AcNo8HuCM4sC0PsHVJ
 LcZrxRvVcU5SqN90I3HWIn4cnRiyx6ioE9OqBNlH3tmL1ZFztHWu2V4qBagD4VyuXo5W
 Qu+rzI7FBxql6RKSmAXlFhSvBZN8OQDXUyrMYblERwt/AIGefjBQaLQ48CXpHcFhUyI7
 4dxmwoKMNpC5sfYTbZqu4yK6IgKxfteXFN2jef0Iat3NcGq9AkVSat+TnRqjBCfBeG2P
 loO4BByl7BDnU7BY4HB0xMSPpaaklQXMDC8OPo8xaaUjUSHte+oL1vOK4SE89E/Tvp68
 c9hg==
X-Gm-Message-State: APjAAAXM0zRRE+Ruo5b88ODFd0a7j5k9/7YB6uB75BOio7UET8xOfhZ8
 fDo+XJaT3R8RV5MECfEAF1Yoec2gdAxevBeYfKO/Ag==
X-Google-Smtp-Source: APXvYqw7Ni5Th0fUq9Ts0Bis2xXOIVgKfyPtSLvdjq4bso22oZrcJT9dIs87ponmUeiRohYMxOLBHx4CLql06nXW9bQ=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr34791307qka.3.1567535001049; 
 Tue, 03 Sep 2019 11:23:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190802120355.1430-1-geert+renesas@glider.be>
 <20190802120355.1430-3-geert+renesas@glider.be>
In-Reply-To: <20190802120355.1430-3-geert+renesas@glider.be>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 20:23:04 +0200
Message-ID: <CAK8P3a0S3axohc7iq_vx_5i+KGiC0fX=rctvY8uXdhwz6Z9YCQ@mail.gmail.com>
Subject: Re: [PULL 2/3] Renesas driver updates for v5.4
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_112322_355801_A3F73700 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.171 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 2, 2019 at 2:04 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> Renesas driver updates for v5.4
>
>   - Fix a flexible array member definition in the R-Car SYSC driver.
>
I see I merged this earlier but forgot to reply.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

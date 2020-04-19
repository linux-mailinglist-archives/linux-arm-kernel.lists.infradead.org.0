Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 487181AFC46
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 18:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WckkkeHWja0c31zskKSr7wz677DKm/nETj79tI3B53g=; b=ceAIKcr/CtFKT7
	NsE520m9r0fMJDyWQ+zsA0eaiRzQqD1uqDYluE935b/y7f7u7kLlCRYyX9elnlJ457cypNa6FGl/H
	A1dJ1v7qKY8h9+FKzajZmqZn36LM1Z6fzL3ixdzpUlzfyaudoVkqxq+8Qv/vSs8J4Fnqvr2sqT3Vd
	NtahZoKU6Oam1PWbfqxoJNQZOH5SkeJh2fCfYdWRci5s5kcNGI6ziFdO6ms6qM3cMvPircQT4+6wI
	2MLPEnIKKVEoIulpx2mdlmaSpdfBwxUHVmrx/tXXxc2eWf9uQR6NONn6f5QWEw9NkNI6baIRu/SIc
	o+XKHX8xRj3TItrbWkBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDHl-0004c8-5m; Sun, 19 Apr 2020 16:59:13 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDHd-0004bR-MG; Sun, 19 Apr 2020 16:59:06 +0000
Received: by mail-ej1-x641.google.com with SMTP id gr25so5886421ejb.10;
 Sun, 19 Apr 2020 09:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yaz56HMp/S89gaKfJpEhbFFnazFPo/RmIrwLmVduCoI=;
 b=GSVsDoWNqHMk1a/muWiXRDv5VANp+vqo4c08fPkDbG9pNXGJRYCfhBZv19nTVghEV/
 rR1emnmvALzm3mBWNYCb0tCXhj/GfMY3BYzeoBauJhrrRlhcvWODFDzalNcgQiZnlPhB
 ZDPKvd6TuNENzsUlt/+aJ2D4KeYw7DbL1Xu9ryn67NfucngIFG5j7z0q7ocNEJzbJmUx
 SRU25/mNFOHWOVjhmQajYOOgAngNAQCBuYtLc56flZ0Z6Bgu4BqB/z/zgXf0Kl/Ks4k6
 ymF3jNCnP0eu5hL1crG77BCfqeE3R/o0nZR2x4u83cHj1p0GHFmOpVOfyN+/sztPbXWj
 vM/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yaz56HMp/S89gaKfJpEhbFFnazFPo/RmIrwLmVduCoI=;
 b=jcbZVYxj3keKBRLXyk9c6bGXk68dPuLNpai4is2FYNk5BaE6J8dt8MWRpDyvAKUhHW
 CAZbfXLx6yXziozuBKS83tNrdwN2nfeNw7TSJYR4ontTy6CLzoBzd7ZaVej3Lf7uAlt2
 hUcIVUFhBx5cKb2NijZFkpqg3IR628lFNfFcG8t/kb6uRrDEMtujfqT05ccZ2JGwNt0x
 n5AlhKq2Tl2IjsLyXQlN4PCmxZ627uqRj1hnVqWT5X1zgnIrp4Qut4z8yfwmYNp8zugG
 XLC9l5gQIGUZPURA8OONId/kplpmRWYq5uPnTJmmNfZ9hF9GpdjWEZS/f5rDTYc49rCt
 +HYg==
X-Gm-Message-State: AGi0PuaLeN1uz7c3L/tLQ4xAMJUCY5tGevE0xKx64ULW03e5XMtKZVbZ
 5MZylIi77wWP/pJ/HeTlWAE3aEj4y1ckbqEJTZtNUQ9y0dgz0g==
X-Google-Smtp-Source: APiQypInUWs4bxD4QvtZtJ/yVZmP+/efzMlqnIUknrqdkFj4i6HrJej16oCfUeGD8zDR58ToIyQMVGpbDdwIYRbGjLs=
X-Received: by 2002:a17:906:4048:: with SMTP id
 y8mr12436425ejj.258.1587315543506; 
 Sun, 19 Apr 2020 09:59:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200418181457.3193175-1-maz@kernel.org>
In-Reply-To: <20200418181457.3193175-1-maz@kernel.org>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 19 Apr 2020 18:58:52 +0200
Message-ID: <CAFBinCDOw07_MHa=EBiLZsw24z3x5ngcW8_xmN6fJ8SqPmyyqg@mail.gmail.com>
Subject: Re: [PATCH] net: stmmac: dwmac-meson8b: Add missing boundary to RGMII
 TX clock array
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_095905_726401_64AE0B2B 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 stable@vger.kernel.org, Jose Abreu <joabreu@synopsys.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Sat, Apr 18, 2020 at 8:15 PM Marc Zyngier <maz@kernel.org> wrote:
[...]
> Digging into this indeed shows that the clock divider array is
> lacking a final fence, and that the clock subsystems goes in the
> weeds. Oh well.
>
> Let's add the empty structure that indicates the end of the array.
oh. Thank you for fixing this!

> Fixes: bd6f48546b9c ("net: stmmac: dwmac-meson8b: Fix the RGMII TX delay on Meson8b/8m2 SoCs")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

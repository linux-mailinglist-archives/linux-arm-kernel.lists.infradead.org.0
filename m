Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7B51792B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:48:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Z+DaH0U/fMc4R3xB542ImK0gv9G5JLeBrQnAC0lNtE=; b=lrQoxs4iXk+h3W
	F7c1VniUtn24KMpvfCazOc0AW7gysISnp79wV9B9wlmu30hEMs+yxoFz7fyFSFnx7Z8HnH6TvpGyv
	44d6fHG9Ow2x20Ut5eq0I93Dyh2/O5skrOG3n5gQG0/i7wlHIOm7bMYlsNqGRDCADJ4CRMu12k3m8
	GJJesNEcxC4cV1IPS2KBUT31QWF3D8E5fMS8/CZ/orda/yJx8ss/YDMoHfwEKhTOTAo42krWzElyj
	7OeLd/CXqUSdm5b+GbBJAvjxoRhAmDle7rXPBMEYt4/Vb4/iy6GnZYGCYQFoSYusVKGeKcINFMaIR
	wF4m1rXyBfPgjko+HtWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9VJp-0007Dy-8I; Wed, 04 Mar 2020 14:48:17 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9VJY-0007Cn-Lz
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:48:01 +0000
Received: by mail-oi1-f195.google.com with SMTP id r16so2311960oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 06:48:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kTVi0CY1WYThcNH0JrXSu81YjmvaHeU7QQq5m/gXIKM=;
 b=XmToxrc4vIVUs5zQux4Zzocu8LeYx6hvw8NPmxI6UywqNanNhGJIztjsUXBvC3sqSK
 SoOdGFowjPtoIdSMbXixCbUpoGaUjBRU2zend+xJMgLlDJLSSFAqRYqRAL1by18/Z8SK
 fu1HRw7w1EM2a2+/3o5K9cP56dNmzLDZ9VGMsRndf1Yv1+buYoJ5opkU8/2pv9NrFQIZ
 RLnTz2SZvbCZphNzGIf4sVdseBTCkzhNpOizDS5zjr2pouw/kfRAJUWt/Re4d3RAZnM3
 S+TaRONzIW3uAGJ06CSxJZmtPyOHTs2M/pcaPoJNTJfI+ohVI1LR5/kWrHUUmXRx3fCC
 C+yg==
X-Gm-Message-State: ANhLgQ1SvEGhqSKUGJAnWsfbf/qBbhCTbLGUjt5HZhdwXXTeDTONn2oL
 7GlMnoao0icaU4LpM9YxCw==
X-Google-Smtp-Source: ADFU+vutJMPeQAk58XIyXq44RtRjch3aZjhj5tMH/gdNf7NpGZqGIc4M4+aVGrQmnTlsNKVWGrSmyA==
X-Received: by 2002:a54:4085:: with SMTP id i5mr1991775oii.17.1583333279432;
 Wed, 04 Mar 2020 06:47:59 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q1sm1200434oij.18.2020.03.04.06.47.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 06:47:58 -0800 (PST)
Received: (nullmailer pid 31673 invoked by uid 1000);
 Wed, 04 Mar 2020 14:47:57 -0000
Date: Wed, 4 Mar 2020 08:47:57 -0600
From: Rob Herring <robh@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 2/7] dt-bindings: arm: Fix cpu compatibles in the
 hierarchical example for PSCI
Message-ID: <20200304144757.GA31548@bogus>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-3-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303150749.30566-3-ulf.hansson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_064800_720774_E6010313 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  3 Mar 2020 16:07:44 +0100, Ulf Hansson wrote:
> Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/psci.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

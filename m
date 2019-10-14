Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CD7D694F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 20:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HH08AYPZ4x6NMENN8SoelFAhJPkQL6PLu8Msf17T6X4=; b=hLhwZKb+VtjXdi
	7kHaugFpNnqLIwKEN6StlbM6+quY0h0uWUzapW0ZAbqBQe1M+eK2qzEQAIWnd6T5KWadL2BPfwEi3
	3sRqjW6Jq5Dxl1t1rEQGyqC2dhleXWowAmP4K44YiU2pVGINJVVnfTGQdA/edjI9auUA9WoR8vU2/
	6EyiSOVdbt4hnm51bTa03g6eCwfqxd8MRjW0UNKQbE6FrG22GY5t4jIdbN8VEulSww0NcFru9wKQu
	CI0An0bESwKkuBNb48NERhblIRdwz1wlhDb9LtKsIiPbxmOep+lkm9vjkW4DgMcgwmmS8VIkrmALd
	xO8leEybQWsl+k02esng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK4uB-0000uA-Tu; Mon, 14 Oct 2019 18:17:15 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK4u1-0000sn-Ov; Mon, 14 Oct 2019 18:17:07 +0000
Received: by mail-ot1-f66.google.com with SMTP id y39so14597591ota.7;
 Mon, 14 Oct 2019 11:17:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ckXq7H/VDyEuDBGMiSrOJq+fYS3KZI2dTxrNxPrWB1k=;
 b=JcRQHyo31/IM+DB8JYt/d5SYsz918FAXcHQlquHxmI5UcLUUgEjZ65eWM9adRo6Nnp
 yNJopA4N67sFU/FJbuDD8K0GQbrheoob9jHXZnbCao/S89SGC58LxH5NwI0sZ1TeE7I2
 t3001iwjRcHellXQqJx6XEBVcqmDeu511d1D2BCnu02FrpC17rtnHMw0OjdFuAeeg61f
 adnjXbJIeXo33wGW9QWnF8BZaDc3aU7u66wmd5n7nP9oN/vhZbFotLRY20e7IIrjJ/97
 lo6UoagKkIG29+k1BU/XCbHTJ9BIUtEifPsQfY4vsazIPDi2mkr4xZGrxPh64yegJwr+
 bcug==
X-Gm-Message-State: APjAAAUtxbEB94I0j4l64oIYfX2Q3SLHHlDS+kihwLqXkesAlNHJ1fhQ
 uATgHbG4hYxaOpJSJ+XfeZrAeXc=
X-Google-Smtp-Source: APXvYqykid9kSCG1CYJVW2KOEUFr4Yc+gJ5hvhWeq8D1eMHp1wcYxUdLkGAG0vEh1DCoe19itZwiaw==
X-Received: by 2002:a9d:58cc:: with SMTP id s12mr12635611oth.291.1571077025089; 
 Mon, 14 Oct 2019 11:17:05 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k24sm5352026oic.29.2019.10.14.11.17.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 11:17:04 -0700 (PDT)
Date: Mon, 14 Oct 2019 13:17:03 -0500
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: crypto: Add DT bindings
 documentation for amlogic-crypto
Message-ID: <20191014181703.GA14399@bogus>
References: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
 <1571031104-6880-2-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571031104-6880-2-git-send-email-clabbe@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_111705_810378_00791D83 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, martin.blumenstingl@googlemail.com,
 khilman@baylibre.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, linux-amlogic@lists.infradead.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 05:31:41 +0000, Corentin Labbe wrote:
> This patch adds documentation for Device-Tree bindings for the
> Amlogic GXL cryptographic offloader driver.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../bindings/crypto/amlogic,gxl-crypto.yaml   | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

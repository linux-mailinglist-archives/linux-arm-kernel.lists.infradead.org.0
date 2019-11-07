Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DDDF23F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 02:01:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNNxi0YKHdr6ZdBkFEJp267ZdMuDI/3av5HxfIwq1Pg=; b=C09IPd00KXAkwl
	vPi7eLn7AUCdoqTekFkKhLwL4CfTw6mxAcpStVhrk3zEoRXZ3Jn2rpHowygRgoo19limtK+yarwGU
	ELzuNB8kMVdUN5zwtbX8HswdFX0I4Y3RlzvejsJjH/evf+xgVYxfBXIfK4IbwNSlVtJ0UqBLtFFp3
	JYY9eEBVTXM+Kes7nASo6Maj42fB/BmEt/gsmGvGG6+qJHGDcBeK0NJmaEH9SDUC1nKyNxcnLwsBl
	wX+Ns4Urtkdx54/f/yEFZ7ZDb4TdD+Kzq7EORf6pFcGH+4pjBc8KD6+S7hKjE4pBAPwtMiSjJa0le
	UnyylvTzEmmv5JOXQdyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSWBA-00069u-My; Thu, 07 Nov 2019 01:01:40 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSWAg-0005ra-IC; Thu, 07 Nov 2019 01:01:12 +0000
Received: by mail-ot1-f66.google.com with SMTP id c19so490125otr.11;
 Wed, 06 Nov 2019 17:01:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0UuYlDNlg6CYP1umbuTYzjw05bILsaabq8J86syVD2w=;
 b=aOOK3oUYS9BYqvQVL4M7WQ+3eUcF/OPXSj8uq97c6h+XBj2tgrVrRdX2z8moTOic6P
 CRcioQNSlRFBfrOdqIqsBa1tTsdhjhFoioKaRjNXUf07jMums8sJT12JoFcPlYZ1ytFe
 ONgmIGxMyhAzCzZcF/x7ivI8F84+T4OOluXJyeil0jwehVpA1Gl0G3MXM5ZfEQzufK+2
 Rt0sh3p+aADgLlTfM6F/BBcCoNMSced8mfZA7q3Z49FFlr2sYmt6lVYmN4d6h9K1LyrM
 GAdZIcrCAIAOKWqooESGWdW8NXGKY6IQT1teWt4VgHzRIygU3li2RdWsPHEveK693Rvl
 lFkg==
X-Gm-Message-State: APjAAAUc66Eg4J1hKwE3X8sUX0v3fj+AGbOOj2NsDxtFbxVdov1F3pxy
 OlhweFJXj5htXn8SOIxy4A==
X-Google-Smtp-Source: APXvYqyOlvqRefihFIqohvXnpjnmLfZkNeSk5z0zxj9LIO/elGrRi5RqBERx/C9tj5eOaNM2qfOfEQ==
X-Received: by 2002:a9d:7410:: with SMTP id n16mr570148otk.3.1573088469199;
 Wed, 06 Nov 2019 17:01:09 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a3sm222078oto.15.2019.11.06.17.01.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 17:01:08 -0800 (PST)
Date: Wed, 6 Nov 2019 19:01:08 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2] dt-bindings: usb: dwc3: Move Amlogic G12A DWC3 Glue
 Bindings to YAML schemas
Message-ID: <20191107010108.GA5321@bogus>
References: <20191106104458.23698-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106104458.23698-1-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_170110_616912_59BEB48B 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  6 Nov 2019 11:44:58 +0100, Neil Armstrong wrote:
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic G12A DWC3 Glue Bindings over to a YAML schemas,
> the AXG and GXL glue bindings will be converted later.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
> Changes since v1:
> - fixed typo in description
> - removed dr-mode definition in favor of "true"
> 
>  .../devicetree/bindings/usb/amlogic,dwc3.txt  |  88 ------------
>  .../usb/amlogic,meson-g12a-usb-ctrl.yaml      | 128 ++++++++++++++++++
>  2 files changed, 128 insertions(+), 88 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

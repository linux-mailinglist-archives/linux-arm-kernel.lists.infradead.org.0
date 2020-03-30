Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55256198814
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NiWS39eBWEPWx+zFV4gbA3RbtvHDk0MXvCMoeyUlK8M=; b=vAYu7A8issEfu3
	Ghko49hUEGQ2OcIBSWLAQBOn4zjhDvNIqZyoMAv5RKkFPnvqEFsphrX2M691M6LdbpueG74R34rXk
	i+RTbYpE85MxnL7w1W/75mYVgj+yxgNR35N6/BD2Vci74vYX9dVUHMMxnSKvOP6KyIGVtvYC07fVw
	csjifnCebaXmdB3aMTe1iM3O+GEuChpXIs7jSYOY9Os1PeGc6lCdb9YdAbVjd9R+yyDBrfw8GNgTr
	7tUeXY/web1sGHPFOhpxXHeycMVtp0PH/DnfR4zt+P4m50m/OOky5KPakx9wXLiHwuxH1bElc5DwL
	Yvd7hWxse8pFMLK5X7yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3i8-00039L-NA; Mon, 30 Mar 2020 23:20:52 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3hz-00038h-I2
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 23:20:44 +0000
Received: by mail-il1-f196.google.com with SMTP id x16so17632600ilp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 16:20:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RBOl7Iekk96c/AIshrO/3RWqL8uoE2wDrX33YLwOSfA=;
 b=GAl3yF/U9du2hjnohwAw2erJfOdFafKUqEgve2jUmCNBj5MFhuvBsB8ic25hu1g+b9
 LpDX7K8oqLwwNY0FxoGEf6Au04bJkCg1jQQ6VClPZpGVVfRMJQQDwlq8TTete0VVJKVP
 HFp8aCY2+7DFB4SMuIPBQroybYHg9I24MiSCi4oAosHHElfBR+moMZznEImJUomldOJO
 Q2Vy+v4sn/S0Lye22KmmOAwJDvj0IcDi/6jIRlT03s7zmnL7SH3czkmCmNTA6HQZBeRJ
 wtB8OVctfi8EJ87e7/MZzPE4MQC0J5z5BypFxdzwZJGuqT3joz6l/TLF1K4vPNmFhxJs
 2clA==
X-Gm-Message-State: ANhLgQ2WqZbYLdtqk/g/mOPXX76+Dd3pw89UXaS1nwNlaXxd9K8Y+QjA
 XxlA5BoxaIpqfwLJ9pBl/V2B1AM=
X-Google-Smtp-Source: ADFU+vuWSuZ4f9YO6jw06I9AgPXOM3ftiwikw3P3ryqZHCbuD8iOLBgqAHDz4IGWRDg4StG2CP/baQ==
X-Received: by 2002:a92:91c3:: with SMTP id e64mr6471514ill.68.1585610442647; 
 Mon, 30 Mar 2020 16:20:42 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id s25sm5336349ilb.37.2020.03.30.16.20.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:20:41 -0700 (PDT)
Received: (nullmailer pid 16658 invoked by uid 1000);
 Mon, 30 Mar 2020 23:20:40 -0000
Date: Mon, 30 Mar 2020 17:20:40 -0600
From: Rob Herring <robh@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2] dt-bindings: iio: dac: stm32-dac: convert bindings to
 json-schema
Message-ID: <20200330232040.GA16570@bogus>
References: <1584639983-31098-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584639983-31098-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_162043_597058_B0ED3704 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 olivier.moysan@st.com, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Mar 2020 18:46:23 +0100, Fabrice Gasnier wrote:
> Convert the STM32 DAC binding to DT schema format using json-schema
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
> Changes in v2:
> - Fix id relative path/filename as detected by Rob's bot
> ---
>  .../devicetree/bindings/iio/dac/st,stm32-dac.txt   |  63 ------------
>  .../devicetree/bindings/iio/dac/st,stm32-dac.yaml  | 110 +++++++++++++++++++++
>  2 files changed, 110 insertions(+), 63 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

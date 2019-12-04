Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D67EB112ECC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 16:43:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0X3PfMDzroXHevuK5zZ0CA3LybHMAelRXSbPOsHm8I=; b=VlOWvJe4dE+qoQ
	pMnoxocBI98nigDsi/U1sWqQVODddBtk+G9crQBjB1R5aWv4bhzBFCxGeJs/rhCi44isSATZ9faIf
	kfzMfrB+pFJSiKJD2cY8LsmWt0WcS4cisNKgEet6m0hztf5AZtuTO0CVrWA4OqePDzXTZyyYJhADW
	0WKqXkyEo46mM5TcVd8rRVcO77CK2wjepxRZl751wtvrkwf1NQ4kxOhb4gROP3zPJAXp4ziJL6hdZ
	qyJKQPv+2t+hBxHKYPMvFQtTAnByTP5VsILaH+rFXkf8czTZC79xjnDa/QtQq55dB/DrwrVD18/r7
	T7cTV59bplkfpogghjsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWoP-00005C-NU; Wed, 04 Dec 2019 15:43:33 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWoJ-0008W2-2g
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:43:28 +0000
Received: by mail-lf1-x141.google.com with SMTP id l18so6530833lfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h3fWfve+7iiO/k2gD5tLBOwnqQP7vRBs+uTKm17AXd8=;
 b=U0xYfjkXSgUf7CVdSOs69f3snS21BWC0S3ZdIGYn6jl0qZ5+T+JmLQ+Ed6WKLVHiV5
 ZvM5Rgd1kpigIXF/o4mYxuMpzx0AWPf4GCUgx5pRbHeRbPzodLrTSgomOvG/V8C2/HJr
 R1hG/vJaghlp+Fc/jhcuqKSJ76p1hW9P6lG3zSOSO7lDOZ/7pGwWqGFChhX7Ekm+oi8z
 146SdCi5pf2L0gIk4mNqF0asadMKfJYqdA/5qf+z0HPKsCtSamNBeaUMhuX3uBzb9EZV
 DHNxk2nkfbQSpBL22D8lFltQIijekLAVjA2CtSg1xdz2thjnFbGPIxCftzymj+Jg0EVw
 /FCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=h3fWfve+7iiO/k2gD5tLBOwnqQP7vRBs+uTKm17AXd8=;
 b=fc2pWFtkHaXMiI4D5ErO0SjaQJUMzi83yaOUTXIlTix50OGy2hmxQ+CoMaeCxSybjR
 U/dLgHcVafEbgfescrOQ6YKpYHKbkWTzWAozVGOif2vYBpy84O/O0xP7v57ITzpSKWrb
 WmAWdRLRRrb/pIWbJ5LTmTwp2rquOOe4iE8E0CULrtO9kiQNgcwyhHHX2/jmqjO1bf5b
 VHZQjfKf4dpg+Ljy10KzMrMcfE/CKD1lHfcZhrDOFsD4TB5QFFaJwWCfkRiOJW0S0IEw
 SYgo2aqqvwdmXbSHXFTclgBkkD/nqnrBWRAonTcy/jLjz7BdWMeKkmF9S/FR49ZQuMus
 NH4A==
X-Gm-Message-State: APjAAAXwQ63wadGFd8WZc3ldy3dHHqLlaffwkK9eDIL/SdfGYt0poL0S
 6c2/BsiV0NaifXC0jRRGc0vY9OvOAk370g==
X-Google-Smtp-Source: APXvYqwjLxbNhdQWOhrtHPhQZJrv0UeEzS/B4sPzddhxzUAynukLpf3QoCNLVUS2l2EO+Rg7JgP8Sg==
X-Received: by 2002:ac2:508f:: with SMTP id f15mr2382528lfm.146.1575474204897; 
 Wed, 04 Dec 2019 07:43:24 -0800 (PST)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:6e8:b572:763a:52df:7394:14f7])
 by smtp.gmail.com with ESMTPSA id v28sm3446675lfd.93.2019.12.04.07.43.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Dec 2019 07:43:24 -0800 (PST)
Subject: Re: [PATCH] net: thunderx: start phy before starting autonegotiation
To: Mian Yousaf Kaukab <ykaukab@suse.de>, netdev@vger.kernel.org
References: <20191204152651.13418-1-ykaukab@suse.de>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <1df5cd0b-3597-4800-a48d-de88c6792e75@cogentembedded.com>
Date: Wed, 4 Dec 2019 18:43:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20191204152651.13418-1-ykaukab@suse.de>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_074327_301833_FD77E501 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: rric@kernel.org, tharvey@gateworks.com, linux-kernel@vger.kernel.org,
 sgoutham@cavium.com, davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/04/2019 06:26 PM, Mian Yousaf Kaukab wrote:

> Since "2b3e88ea6528 net: phy: improve phy state checking"

   Since 2b3e88ea6528 ("net: phy: improve phy state checking")

> phy_start_aneg() expects phy state to be >= PHY_UP. Call phy_start()
> before calling phy_start_aneg() during probe so that autonegotiation
> is initiated.
> 
> Network fails without this patch on Octeon TX.
> 
> Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

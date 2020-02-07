Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999C8155E60
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 19:45:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KGF0Up98hCOMDXDPl2Xm6nDHm45T+EeZ6sgKqe92w8=; b=cKoX/Af0UWK15w
	FYdQN7EpbQV8oADvBN/lRacoyCURRPM/MLHfmymHTpcQ95gn2AuL3/UqDBBH8UnDP1gJs6q7LLWqN
	fSs1EBfIrmkiFSrSDtIWHjYD7NL81cEpeT4CjKIte/2fFLRntHh4poDRAbQ5vHfUkDy2/LWzItfI6
	VwdWqtBN5yzGGbXd/zFRr+q0GAuYVvNhFZbgrr+qabvaSKJGMAQyP0wXSneEBJIzJANfBieAjfOO5
	ZdGryl8ES9sF0ncvPbXEI7NP9rPbjnHntW1MGELxtixFXICui4CyNlHepmJaZGjBLlH+olavZ/Y+V
	liRsCi2vy2UtLDF0ta9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j08dM-0003tm-8z; Fri, 07 Feb 2020 18:45:44 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j08dF-0003n9-Vk
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 18:45:39 +0000
Received: by mail-qv1-xf43.google.com with SMTP id p2so75696qvo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 10:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4WoqZWhlFigowj5nWAxAoZuoh6Wc+IYKOBSeIA3KMeY=;
 b=XM2lXlMP2sn+m1mIjaaP947U0iR9QtZ82UpnD9WqCfJgDquwi86QWmxWgg+jyPWB3c
 l0S9UFQTr4e6lnpjcMEJHyRamSVdMUM06phOyWpJpB6V3XMR1v+ypWQKwrF0m7eUvqMZ
 Vm3YlfwGch2ZfKdys6dvcNqNDsJgLkbpqbCNFEWPJGKxSDnsi00XIIAVWvJ/i38gcQAO
 HkRm19Y83pz16SAin7Xib0X/38x9C86HNVr0ilp0p8bYQFnHTyofKTMJpj8IRLufE2uC
 g3/JzUOWUZOwiKApW/qZytVwaIphsiSviWTeb8uUV/VrJMwygmihjx14jYNEc3Px7Nbm
 i2MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=4WoqZWhlFigowj5nWAxAoZuoh6Wc+IYKOBSeIA3KMeY=;
 b=I8Pvwe6L5n56iPsH1F6F7wsCVTs6kNO+C00VO3k9Uhz2LobWVu61Xy9dcfZBuwpWeK
 4cLJ5I62WJYsT8qCGUrolHli+x0XF0bm4hpun4TJwp/mno+3+FiOnZlLrq0a3VC8W8Y4
 f4Bha9OBNqRkOpkz93NCLARQiqXIUp7Jx2NHx1/Uvg5L5Dc7LCR/5XtZ4j7E8jM1qncU
 oC552Tru9TlKsZOu24mte9Zaw5MmGskRSBMRB/XI6m04VDrbNrRDizQ7EfI8QieKnNzX
 H/n2BWTn4CW2pv7J3Ch9Ek7VAUFe3hT1HcDx3ZPCHl1eqWNLLAwCYCi5q/OI2E62COG9
 VUQA==
X-Gm-Message-State: APjAAAUHFm7ijT3dFkAzcnujhq4oHVgOUm3vlc0wY3sqo2WP/ZONnHA2
 OGj+m0eoFHEn5+32TfAHBVc=
X-Google-Smtp-Source: APXvYqxhjNUXNB9tXrt+KrnUN2gKsbN6PjyaSzDloBuQ41XSA3y05a5xQPsnanLI4Iv7WvdMG73t3Q==
X-Received: by 2002:a05:6214:b23:: with SMTP id
 w3mr208717qvj.181.1581101136603; 
 Fri, 07 Feb 2020 10:45:36 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id o7sm1722563qkd.119.2020.02.07.10.45.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 10:45:36 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Fri, 7 Feb 2020 13:45:34 -0500
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 0/2] arch-agnostic initrd loading method for EFI systems
Message-ID: <20200207184532.GA3276112@rani.riverdale.lan>
References: <20200206140352.6300-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206140352.6300-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_104538_049889_9D68980B 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi@vger.kernel.org, agraf@csgraf.de, xypron.glpk@gmx.de,
 daniel.kiper@oracle.com, ilias.apalodimas@linaro.org, mjg59@google.com,
 pjones@redhat.com, leif@nuviainc.com, lersek@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 02:03:50PM +0000, Ard Biesheuvel wrote:
>   data structure. It also creates a time window where the initrd data sits
>   in memory, and can potentially be corrupted before the kernel is booted.
> 

I don't quite understand the time window aspect -- can you expand on
that? It seems like the same time window exists between when the kernel
is loaded and when it actually runs, no? Why is this more important for
initrd?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3521390E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 13:14:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I00ILAJePkgZUx+1dlGcxpgS3UZqJnUHA55g1s+6+wo=; b=C3H+297dq9Oh4p
	5dt2HwWWA7NESnMDOBzlmf+xSodhSvgFGOfTCKdkX+w7DCN4/YNG/S8SjaN4nou4UYPnePZBiHOG1
	bbmcDxirjPC1R4Z8RGuSxaR2a8ECTA4Rec3DnbX0+tV8pIPuRlzHIofM2TTd6gk05tyDfN35/pQp0
	ytoIrm8OWHiqcA0lcUWsDZWu4Tiqvx/dMZ4M2ThtfI+jEspTbLSIN4uX1Mc+0UR8l9gpQqF++epH/
	5k0iy/1ENmBFaVKpUMhmjFUZh2zfZhejQk9KK+pRHuFgblzAb+x3hMxZtn48OT25VwOasMCKk8Un6
	LENxpVLbpOgdL6HQsPdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqybi-00066n-8d; Mon, 13 Jan 2020 12:14:10 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqybX-000669-S5
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 12:14:01 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00DCDwf6099736;
 Mon, 13 Jan 2020 06:13:58 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578917638;
 bh=LXtb0EB1d+BCfS/uqY0B5xrzlDGST+kyyTU4YDibppU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=PV5JelTAoiBeTlvaCu21C6R031ttAsg40OaYipqjPQvdYmThYA5rQDaOqc3VZLwiZ
 ACC2vxEzEqLRaNNSHm6oWp46/aFIl2WhtjzmFzrLHXCDELvnY+0l7M2CNTis2kp4W4
 QwyRbZElHgXYOJXvAHAp6bWgVyh8m4BjGyP/1PUQ=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00DCDwCY092185
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 13 Jan 2020 06:13:58 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 13
 Jan 2020 06:13:58 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 13 Jan 2020 06:13:58 -0600
Received: from [172.24.145.246] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00DCDt2L126167;
 Mon, 13 Jan 2020 06:13:56 -0600
Subject: Re: [PATCH] ARM: davinci: dm365-evm: Add Fixed regulators needed for
 tlv320aic3101
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <bgolaszewski@baylibre.com>
References: <20190830102252.22488-1-peter.ujfalusi@ti.com>
 <e2e10e39-aa21-1c53-75b2-18013937a841@ti.com>
 <698562e3-6391-f0e3-a7a8-f64794cfa33e@ti.com>
 <7a6179ab-6ef1-767d-9b19-576aa1c6dcdd@ti.com>
 <14d31170-82ab-f263-e23d-14835e968ce3@ti.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <2f30f543-f96f-e464-03b4-d0160063e5eb@ti.com>
Date: Mon, 13 Jan 2020 17:43:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <14d31170-82ab-f263-e23d-14835e968ce3@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_041359_994461_4F4C8578 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/10/19 1:12 PM, Peter Ujfalusi wrote:
> 
> 
> On 21/10/2019 13.40, Peter Ujfalusi wrote:
>>
>>
>> On 17/10/2019 16.49, Sekhar Nori wrote:
>>> On 17/10/19 4:39 PM, Sekhar Nori wrote:
>>>> On 30/08/19 3:52 PM, Peter Ujfalusi wrote:
>>>>> The codec driver needs correct regulators in order to probe.
>>>>> Both VCC_3V3 and VCC_1V8 is always on fixed regulators on the board.
>>>>>
>>>>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
>>>>
>>>> Applied for v5.4
>>>
>>> This is breaking boot on DM365 EVM.
>>>
>>> Booting Linux on physical CPU 0x0                                               
>>> Linux version 5.4.0-rc1-00001-g927d10a85791-dirty (a0875516@psplinux063) (gcc v9
>>> CPU: ARM926EJ-S [41069265] revision 5 (ARMv5TEJ), cr=0005317f                   
>>> CPU: VIVT data cache, VIVT instruction cache                                    
>>> Machine: DaVinci DM365 EVM                                                      
>>> Memory policy: Data cache writethrough                                          
>>> cma: Reserved 16 MiB at 0x86c00000                                              
>>> DaVinci dm365_rev1.1 variant 0x0                                                
>>> On node 0 totalpages: 32768                                                     
>>>   DMA zone: 256 pages used for memmap                                           
>>>   DMA zone: 0 pages reserved                                                    
>>>   DMA zone: 32768 pages, LIFO batch:7                                           
>>> pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768                                   
>>> pcpu-alloc: [0] 0                                                               
>>> Built 1 zonelists, mobility grouping on.  Total pages: 32512                    
>>> Kernel command line: console=ttyS0,115200n8 root=/dev/nfs rw nfsroot=172.24.210p
>>> Dentry cache hash table entries: 16384 (order: 4, 65536 bytes, linear)          
>>> Inode-cache hash table entries: 8192 (order: 3, 32768 bytes, linear)            
>>> mem auto-init: stack:off, heap alloc:off, heap free:off                         
>>> Memory: 106776K/131072K available (4760K kernel code, 253K rwdata, 1160K rodata)
>>> SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1                      
>>> rcu: Preemptible hierarchical RCU implementation.                               
>>>         Tasks RCU enabled.                                                      
>>> rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.          
>>> NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16                                 
>>> random: get_random_bytes called from start_kernel+0x25c/0x440 with crng_init=0  
>>> clocksource: timer0_1: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79s
>>> sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every 89478484971ns       
>>> Console: colour dummy device 80x30                                              
>>> Calibrating delay loop... 146.84 BogoMIPS (lpj=734208)                          
>>> pid_max: default: 32768 minimum: 301                                            
>>> Mount-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)             
>>> Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)        
>>> CPU: Testing write buffer coherency: ok                                         
>>> Setting up static identity map for 0x80008400 - 0x80008458                      
>>> rcu: Hierarchical SRCU implementation.                                          
>>> devtmpfs: initialized                                                           
>>> clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 191s
>>> futex hash table entries: 256 (order: -1, 3072 bytes, linear)                   
>>> pinctrl core: initialized pinctrl subsystem                                     
>>> NET: Registered protocol family 16                                              
>>> DMA: preallocated 256 KiB pool for atomic coherent allocations                  
>>> mux: initialized INT_EDMA_CC                                                    
>>> mux: Setting register INT_EDMA_CC                                               
>>> mux:    INTMUX (0x00000018) = 0x00000000 -> 0x00000004                          
>>> cpuidle: using governor menu                                                    
>>> mux: initialized INT_EMAC_RXTHRESH                                              
>>> mux: Setting register INT_EMAC_RXTHRESH                                         
>>> mux:    INTMUX (0x00000018) = 0x00000004 -> 0x00004004                          
>>> mux: initialized INT_EMAC_RXPULSE                                               
>>> mux: Setting register INT_EMAC_RXPULSE                                          
>>> mux:    INTMUX (0x00000018) = 0x00004004 -> 0x0000c004                          
>>> mux: initialized INT_EMAC_TXPULSE                                               
>>> mux: Setting register INT_EMAC_TXPULSE                                          
>>> mux:    INTMUX (0x00000018) = 0x0000c004 -> 0x0001c004                          
>>> mux: initialized INT_EMAC_MISCPULSE                                             
>>> mux: Setting register INT_EMAC_MISCPULSE                                        
>>> mux:    INTMUX (0x00000018) = 0x0001c004 -> 0x0003c004                          
>>> EVM: tvp5146 SD video input                                                     
>>> mux: initialized INT_PRTCSS                                                     
>>> mux: Setting register INT_PRTCSS                                                
>>> mux:    INTMUX (0x00000018) = 0x0003c004 -> 0x0003c404                          
>>> mux: initialized SPI0_SCLK                                                      
>>> mux: Setting register SPI0_SCLK                                                 
>>> mux:    PINMUX3 (0x0000000c) = 0x015affff -> 0x115affff                         
>>> mux: initialized SPI0_SDI                                                       
>>> mux: Setting register SPI0_SDI                                                  
>>> mux:    PINMUX3 (0x0000000c) = 0x115affff -> 0x155affff                         
>>> mux: initialized SPI0_SDO                                                       
>>> mux: Setting register SPI0_SDO                                                  
>>> mux:    PINMUX3 (0x0000000c) = 0x155affff -> 0x175affff                         
>>> mux: initialized SPI0_SDENA0                                                    
>>> mux: Setting register SPI0_SDENA0                                               
>>> mux:    PINMUX3 (0x0000000c) = 0x175affff -> 0x375affff                         
>>> edma edma.0: Legacy memcpy is enabled, things might not work                    
>>> edma edma.0: TI EDMA DMA engine driver                                          
>>> 8<--- cut here ---                                                              
>>> Unable to handle kernel NULL pointer dereference at virtual address 000000c0    
>>> pgd = (ptrval)                                                                  
>>> [000000c0] *pgd=00000000                                                        
>>> Internal error: Oops: 5 [#1] PREEMPT ARM                                        
>>> Modules linked in:                                                              
>>> CPU: 0 PID: 1 Comm: swapper Not tainted 5.4.0-rc1-00001-g927d10a85791-dirty #146
>>> Hardware name: DaVinci DM365 EVM                                                
>>> PC is at reg_fixed_voltage_probe+0x30/0x2ec                                     
>>> LR is at reg_fixed_voltage_probe+0x2c/0x2ec                                     
>>> pc : [<c02a9628>]    lr : [<c02a9624>]    psr: 60000053                         
>>> sp : c6837de0  ip : 00000000  fp : c062cfd8                                     
>>> r10: c05f44a8  r9 : 00000000  r8 : c68a24d0                                     
>>> r7 : c0631008  r6 : c68a24e0  r5 : 00000000  r4 : c68a24e0                      
>>> r3 : 00000000  r2 : c065a854  r1 : 00000000  r0 : 00000000                      
>>> Flags: nZCv  IRQs on  FIQs off  Mode SVC_32  ISA ARM  Segment none              
>>> Control: 0005317f  Table: 80004000  DAC: 00000053                               
>>> Process swapper (pid: 1, stack limit = 0x(ptrval))                              
>>> Stack: (0xc6837de0 to 0xc6838000)                                               
>>> 7de0: c689be40 c0167044 00000000 c68f4720 c68f4660 c68f4660 c68f4720 c689be40   
>>> 7e00: c0575ca4 64d9cb0d 00000000 c68a24e0 00000000 c065a854 c065a854 00000000   
>>> 7e20: 00000000 c05f44a8 c062cfd8 c02e0a64 c68a24e0 c0688d00 00000000 c02dec54   
>>> 7e40: c68a24e0 c065a854 c065a854 c0631008 ffffe000 c061e828 c05f44a8 c02def44   
>>> 7e60: 00000000 ffffff08 ffff0a00 c68a24e0 00000000 c065a854 c0631008 ffffe000   
>>> 7e80: c061e828 c05f44a8 c062cfd8 c02df1f8 00000000 c065a854 c68a24e0 c02df258   
>>> 7ea0: c68337b0 c065a854 c02df200 c02dced4 c061e828 c681db90 c68337b0 64d9cb0d   
>>> 7ec0: c062cfd8 c065a854 c682af00 c065ea48 00000000 c02de070 c054f984 c0494cc0   
>>> 7ee0: c065a854 c065a854 c0631008 c060b098 00000000 c02dfb04 c066d5c0 c0631008   
>>> 7f00: c060b098 c000a624 0000007f c7fffea8 c05d00c4 00000000 c7fffee9 c00372e0   
>>> 7f20: c05cf6d8 c0549714 00000000 00000004 00000004 00000000 00000000 c7fffee2   
>>> 7f40: c7fffee5 64d9cb0d 00000000 0000007f c061e844 64d9cb0d 0000007f c061e848   
>>> 7f60: 00000005 c066d5c0 c066d5c0 c05f4e6c 00000004 00000004 00000000 c05f44a8   
>>> 7f80: 00000000 00000000 c04a71bc 00000000 00000000 00000000 00000000 00000000   
>>> 7fa0: 00000000 c04a71c4 00000000 c00090e0 00000000 00000000 00000000 00000000   
>>> 7fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000   
>>> 7fe0: 00000000 00000000 00000000 00000000 00000013 00000000 00000000 00000000   
>>> [<c02a9628>] (reg_fixed_voltage_probe) from [<c02e0a64>] (platform_drv_probe+0x)
>>> [<c02e0a64>] (platform_drv_probe) from [<c02dec54>] (really_probe+0x1e0/0x34c)  
>>> [<c02dec54>] (really_probe) from [<c02def44>] (driver_probe_device+0x5c/0x168)  
>>> [<c02def44>] (driver_probe_device) from [<c02df1f8>] (device_driver_attach+0x58)
>>> [<c02df1f8>] (device_driver_attach) from [<c02df258>] (__driver_attach+0x58/0xc)
>>> [<c02df258>] (__driver_attach) from [<c02dced4>] (bus_for_each_dev+0x70/0xb4)   
>>> [<c02dced4>] (bus_for_each_dev) from [<c02de070>] (bus_add_driver+0x194/0x1cc)  
>>> [<c02de070>] (bus_add_driver) from [<c02dfb04>] (driver_register+0x74/0x108)    
>>> [<c02dfb04>] (driver_register) from [<c000a624>] (do_one_initcall+0x6c/0x1d8)   
>>> [<c000a624>] (do_one_initcall) from [<c05f4e6c>] (kernel_init_freeable+0x10c/0x)
>>> [<c05f4e6c>] (kernel_init_freeable) from [<c04a71c4>] (kernel_init+0x8/0xec)    
>>> [<c04a71c4>] (kernel_init) from [<c00090e0>] (ret_from_fork+0x14/0x34)          
>>> Exception stack(0xc6837fb0 to 0xc6837ff8)                                       
>>> 7fa0:                                     00000000 00000000 00000000 00000000   
>>> 7fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000   
>>> 7fe0: 00000000 00000000 00000000 00000000 00000013 00000000                     
>>> Code: e5920018 e58d3024 eb02b71e e3a03000 (e59090c0)                            
>>> ---[ end trace 90e87368a248f7f6 ]---                                            
>>> Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b      
>>
>> Interesting.
>> Something has changed in regulators core which causes crash when not
>> booted with DT?
>>
>> It did worked when I have sent the patches. I'll take a look what might
>> be the issue.
> 
> can this be the fix: https://lkml.org/lkml/2019/9/21/199 ?

It seems like, and I confirm it works now! Queuing for v5.6

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

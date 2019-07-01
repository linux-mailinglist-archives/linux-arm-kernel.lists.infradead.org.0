Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 341825C26D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 19:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bQzPPFZGzKAIfTPLd/QUgaXmUlygxQPIEnshVuK3ALo=; b=nu4A1u0OMzDAFZ
	Xl+Y6Z4hriDWyeBAfEN59X8Ud7lA4wwbks3ABUGiD5oNqJP/tsF1glT6BrVgx20TPCizF0VuyBRqP
	mVkI8Cp0Nmf+wl+ROSBafizXblbk3EiXoAUHnyQR7V3kz2b5KW6Oh8r3yTTrKOiQJNOXwu62sKZeA
	Omb/XWnDrDXXdE4PvMzB99IzToOCGnFuToaiIXt5vFpCuQBP7hHlooB5fPQHxOCQnhvE0i9ueZe5A
	beKN4/BsAeNPKt2vk14tlJWPIwll2osHSUaAmiL4u7qXqq0AeDQAqrtXxASK3evOlNW3GRD1TOZum
	N3JZLFsnw/rWp+hibR5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi0aU-0007Mh-Ib; Mon, 01 Jul 2019 17:59:34 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi0aL-0007Kk-Fy; Mon, 01 Jul 2019 17:59:28 +0000
X-Originating-IP: 79.86.19.127
Received: from alex.numericable.fr (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 6092F1C000A;
 Mon,  1 Jul 2019 17:59:01 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Hanjun Guo <guohanjun@huawei.com>, Christoph Hellwig <hch@infradead.org>,
 Mike Kravetz <mike.kravetz@oracle.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH v3 0/2] Hugetlbfs support for riscv
Date: Mon,  1 Jul 2019 13:58:58 -0400
Message-Id: <20190701175900.4034-1-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_105925_855609_BC341E7B 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series introduces hugetlbfs support for both riscv 32/64. Riscv32           
is architecturally limited to huge pages of size 4MB whereas riscv64 has         
2MB/1G huge pages support. Transparent huge page support is not                  
implemented here, I will submit another series later.                            
                                                                                 
As stated in "The RISC-V Instruction Set Manual, Volume II: Privileged           
Architecture", riscv page table entries are marked as non-leaf entries           
as soon as at least one of the R/W/X bit set:                                    
                                                                                 
- pmd_huge/pud_huge check if one of those bits are set,                          
- pte_mkhuge simply returns the same pte value and does not set any of           
  the R/W/X bits                                                                 
                                                                                 
This series was validated using libhugetlbfs testsuite ported to riscv64         
without linker script support.                                                   
(https://github.com/AlexGhiti/libhugetlbfs.git, branch dev/alex/riscv).          
                                                                                 
- libhugetlbfs testsuite on riscv64/2M:                                          
  - brk_near_huge triggers an assert in malloc.c, does not on x86.               
                                                                                 
- libhugetlbfs testsuite on riscv64/1G:                                          
  - brk_near_huge triggers an assert in malloc.c, does not on x86.               
  - mmap-gettest, mmap-cow: testsuite passes the number of default free          
    pages as parameters and then fails for 1G which is not the default.          
    Otherwise succeeds when given the right number of pages.                     
  - map_high_truncate_2 fails on x86 too: 0x60000000 is not 1G aligned           
    and fails at line 694 of fs/hugetlbfs/inode.c.                               
  - heapshrink on 1G fails on x86 too, not investigated.                         
  - counters.sh on 1G fails on x86 too: alloc_surplus_huge_page returns          
    NULL in case of gigantic pages.                                              
  - icache-hygiene succeeds after patch #3 of this series which lowers           
    the base address of mmap.                                                    
  - fallocate_stress.sh on 1G never ends, on x86 too, not investigated.          
                                                                                 
- libhugetlbfs testsuite on riscv32/4M: kernel build passes, lacks               
  libhugetlbfs support for 32bits.                                               
                                                                                 
* Output for riscv64 2M and 1G libhugetbfs testsuite:                            
                                                                                 
zero_filesize_segment (2M: 64):                                                  
zero_filesize_segment (1024M: 64):                                               
test_root (2M: 64):     PASS                                                     
test_root (1024M: 64):  PASS                                                     
meminfo_nohuge (2M: 64):        PASS                                             
meminfo_nohuge (1024M: 64):     PASS                                             
gethugepagesize (2M: 64):       PASS                                             
gethugepagesize (1024M: 64):    PASS                                             
gethugepagesizes (2M: 64):      PASS                                             
gethugepagesizes (1024M: 64):   PASS                                             
HUGETLB_VERBOSE=1 empty_mounts (2M: 64):        PASS                             
HUGETLB_VERBOSE=1 empty_mounts (1024M: 64):     PASS                             
HUGETLB_VERBOSE=1 large_mounts (2M: 64):        PASS                             
HUGETLB_VERBOSE=1 large_mounts (1024M: 64):     PASS                             
find_path (2M: 64):     PASS                                                     
find_path (1024M: 64):  PASS                                                     
unlinked_fd (2M: 64):   PASS                                                     
unlinked_fd (1024M: 64):        PASS                                             
readback (2M: 64):      PASS                                                     
readback (1024M: 64):   PASS                                                     
truncate (2M: 64):      PASS                                                     
truncate (1024M: 64):   PASS                                                     
shared (2M: 64):        PASS                                                     
shared (1024M: 64):     PASS                                                     
mprotect (2M: 64):      PASS                                                     
mprotect (1024M: 64):   PASS                                                     
mlock (2M: 64): PASS                                                             
mlock (1024M: 64):      PASS                                                     
misalign (2M: 64):      PASS                                                     
misalign (1024M: 64):   PASS                                                     
fallocate_basic.sh (2M: 64):    PASS                                             
fallocate_basic.sh (1024M: 64): PASS                                             
fallocate_align.sh (2M: 64):    PASS                                             
fallocate_align.sh (1024M: 64): PASS                                             
ptrace-write-hugepage (2M: 64): PASS                                             
ptrace-write-hugepage (1024M: 64):      PASS                                     
icache-hygiene (2M: 64):        PASS                                             
icache-hygiene (1024M: 64):     PASS                                             
slbpacaflush (2M: 64):  PASS (inconclusive)                                      
slbpacaflush (1024M: 64):       PASS (inconclusive)                              
straddle_4GB_static (2M: 64):   PASS                                             
straddle_4GB_static (1024M: 64):        PASS                                     
huge_at_4GB_normal_below_static (2M: 64):       PASS                             
huge_at_4GB_normal_below_static (1024M: 64):    PASS                             
huge_below_4GB_normal_above_static (2M: 64):    PASS                             
huge_below_4GB_normal_above_static (1024M: 64): PASS                             
map_high_truncate_2 (2M: 64):   PASS                                             
map_high_truncate_2 (1024M: 64):        FAIL    ftruncate(): Invalid             
argument                                                                         
misaligned_offset (2M: 64):     PASS (inconclusive)                              
misaligned_offset (1024M: 64):  PASS (inconclusive)                              
truncate_above_4GB (2M: 64):    PASS                                             
truncate_above_4GB (1024M: 64): PASS                                             
brk_near_huge (2M: 64): brk_near_huge: malloc.c:2385: sysmalloc:                 
Assertion `(old_top == initial_top (av) && old_size == 0) || ((unsigned          
long) (old_size) >= MINSIZE && prev_inuse (old_top) && ((unsigned long)          
old_end & (pagesize - 1)) == 0)' failed.                                         
brk_near_huge (1024M: 64):      brk_near_huge: malloc.c:2385: sysmalloc:         
Assertion `(old_top == initial_top (av) && old_size == 0) || ((unsigned          
long) (old_size) >= MINSIZE && prev_inuse (old_top) && ((unsigned long)          
old_end & (pagesize - 1)) == 0)' failed.                                         
task-size-overrun (2M: 64):     PASS                                             
task-size-overrun (1024M: 64):  PASS                                             
stack_grow_into_huge (2M: 64):   PASS                                            
stack_grow_into_huge (1024M: 64): PASS                                           
corrupt-by-cow-opt (2M: 64):    PASS                                             
corrupt-by-cow-opt (1024M: 64): PASS                                             
noresv-preserve-resv-page (2M: 64):     PASS                                     
noresv-preserve-resv-page (1024M: 64):  PASS                                     
noresv-regarded-as-resv (2M: 64):       PASS                                     
noresv-regarded-as-resv (1024M: 64):    PASS                                     
readahead_reserve.sh (2M: 64):  PASS                                             
readahead_reserve.sh (1024M: 64):       PASS                                     
madvise_reserve.sh (2M: 64):    PASS                                             
madvise_reserve.sh (1024M: 64): PASS                                             
fadvise_reserve.sh (2M: 64):    PASS                                             
fadvise_reserve.sh (1024M: 64): PASS                                             
mremap-expand-slice-collision.sh (2M: 64):      PASS                             
mremap-expand-slice-collision.sh (1024M: 64):   PASS                             
mremap-fixed-normal-near-huge.sh (2M: 64):      PASS                             
mremap-fixed-normal-near-huge.sh (1024M: 64):   PASS                             
mremap-fixed-huge-near-normal.sh (2M: 64):      PASS                             
mremap-fixed-huge-near-normal.sh (1024M: 64):   PASS                             
set shmmax limit to 67108864                                                     
shm-perms (2M: 64):     PASS                                                     
private (2M: 64):       PASS                                                     
private (1024M: 64):    PASS                                                     
fork-cow (2M: 64):      PASS                                                     
fork-cow (1024M: 64):   PASS                                                     
direct (2M: 64):        Bad configuration: Failed to open direct-IO              
file: Invalid argument                                                           
direct (1024M: 64):     Bad configuration: Failed to open direct-IO              
file: File exists                                                                
malloc (2M: 64):        PASS                                                     
malloc (1024M: 64):     PASS                                                     
LD_PRELOAD=libhugetlbfs.so HUGETLB_MORECORE=yes malloc (2M: 64):                 
PASS                                                                             
LD_PRELOAD=libhugetlbfs.so HUGETLB_MORECORE=yes malloc (1024M: 64):              
PASS                                                                             
LD_PRELOAD=libhugetlbfs.so HUGETLB_RESTRICT_EXE=unknown:none                     
HUGETLB_MORECORE=yes malloc (2M: 64):      PASS                                  
LD_PRELOAD=libhugetlbfs.so HUGETLB_RESTRICT_EXE=unknown:none                     
HUGETLB_MORECORE=yes malloc (1024M: 64):PASS                                     
LD_PRELOAD=libhugetlbfs.so HUGETLB_RESTRICT_EXE=unknown:malloc                   
HUGETLB_MORECORE=yes malloc (2M: 64):    PASS                                    
LD_PRELOAD=libhugetlbfs.so HUGETLB_RESTRICT_EXE=unknown:malloc                   
HUGETLB_MORECORE=yes malloc (1024M: 64): PASS                                    
malloc_manysmall (2M: 64):      PASS                                             
malloc_manysmall (1024M: 64):   PASS                                             
LD_PRELOAD=libhugetlbfs.so HUGETLB_MORECORE=yes malloc_manysmall (2M:            
64):      PASS                                                                   
LD_PRELOAD=libhugetlbfs.so HUGETLB_MORECORE=yes malloc_manysmall (1024M:         
64):   PASS                                                                      
heapshrink (2M: 64):    PASS                                                     
heapshrink (1024M: 64): PASS                                                     
LD_PRELOAD=libheapshrink.so heapshrink (2M: 64):        PASS                     
LD_PRELOAD=libheapshrink.so heapshrink (1024M: 64):     PASS                     
LD_PRELOAD=libhugetlbfs.so HUGETLB_MORECORE=yes heapshrink (2M: 64):             
PASS                                                                             
LD_PRELOAD=libhugetlbfs.so HUGETLB_MORECORE=yes heapshrink (1024M: 64):          
PASS                                                                             
LD_PRELOAD=libhugetlbfs.so libheapshrink.so HUGETLB_MORECORE=yes                 
heapshrink (2M: 64):   PASS                                                      
LD_PRELOAD=libhugetlbfs.so libheapshrink.so HUGETLB_MORECORE=yes                 
heapshrink (1024M: 64):        PASS                                              
LD_PRELOAD=libheapshrink.so HUGETLB_MORECORE_SHRINK=yes                          
HUGETLB_MORECORE=yes heapshrink (2M: 64):       PASS (inconclusive)              
LD_PRELOAD=libheapshrink.so HUGETLB_MORECORE_SHRINK=yes                          
HUGETLB_MORECORE=yes heapshrink (1024M: 64):    PASS (inconclusive)              
LD_PRELOAD=libhugetlbfs.so libheapshrink.so HUGETLB_MORECORE_SHRINK=yes          
HUGETLB_MORECORE=yes heapshrink (2M: 64):       PASS                             
LD_PRELOAD=libhugetlbfs.so libheapshrink.so HUGETLB_MORECORE_SHRINK=yes          
HUGETLB_MORECORE=yes heapshrink (1024M: 64):    FAIL    Heap did not             
shrink                                                                           
HUGETLB_VERBOSE=1 HUGETLB_MORECORE=yes heap-overflow (2M: 64):  PASS             
HUGETLB_VERBOSE=1 HUGETLB_MORECORE=yes heap-overflow (1024M: 64):                
PASS                                                                             
HUGETLB_VERBOSE=0 linkhuge_nofd (2M: 64):                                        
HUGETLB_VERBOSE=0 linkhuge_nofd (1024M: 64):                                     
LD_PRELOAD=libhugetlbfs.so HUGETLB_VERBOSE=0 linkhuge_nofd (2M: 64):             
LD_PRELOAD=libhugetlbfs.so HUGETLB_VERBOSE=0 linkhuge_nofd (1024M: 64):          
linkhuge (2M: 64):                                                               
linkhuge (1024M: 64):                                                            
LD_PRELOAD=libhugetlbfs.so linkhuge (2M: 64):                                    
LD_PRELOAD=libhugetlbfs.so linkhuge (1024M: 64):                                 
linkhuge_rw (2M: 64):                                                            
linkhuge_rw (1024M: 64):                                                         
HUGETLB_ELFMAP=R linkhuge_rw (2M: 64):                                           
HUGETLB_ELFMAP=R linkhuge_rw (1024M: 64):                                        
HUGETLB_ELFMAP=W linkhuge_rw (2M: 64):                                           
HUGETLB_ELFMAP=W linkhuge_rw (1024M: 64):                                        
HUGETLB_ELFMAP=RW linkhuge_rw (2M: 64):                                          
HUGETLB_ELFMAP=RW linkhuge_rw (1024M: 64):                                       
HUGETLB_ELFMAP=no linkhuge_rw (2M: 64):                                          
HUGETLB_ELFMAP=no linkhuge_rw (1024M: 64):                                       
HUGETLB_ELFMAP=R HUGETLB_MINIMAL_COPY=no linkhuge_rw (2M: 64):                   
HUGETLB_ELFMAP=R HUGETLB_MINIMAL_COPY=no linkhuge_rw (1024M: 64):                
HUGETLB_ELFMAP=W HUGETLB_MINIMAL_COPY=no linkhuge_rw (2M: 64):                   
HUGETLB_ELFMAP=W HUGETLB_MINIMAL_COPY=no linkhuge_rw (1024M: 64):                
HUGETLB_ELFMAP=RW HUGETLB_MINIMAL_COPY=no linkhuge_rw (2M: 64):                  
HUGETLB_ELFMAP=RW HUGETLB_MINIMAL_COPY=no linkhuge_rw (1024M: 64):               
HUGETLB_SHARE=0 HUGETLB_ELFMAP=R linkhuge_rw (2M: 64):                           
HUGETLB_SHARE=0 HUGETLB_ELFMAP=R linkhuge_rw (1024M: 64):                        
HUGETLB_SHARE=1 HUGETLB_ELFMAP=R linkhuge_rw (2M: 64):                           
HUGETLB_SHARE=1 HUGETLB_ELFMAP=R linkhuge_rw (1024M: 64):                        
HUGETLB_SHARE=0 HUGETLB_ELFMAP=W linkhuge_rw (2M: 64):                           
HUGETLB_SHARE=0 HUGETLB_ELFMAP=W linkhuge_rw (1024M: 64):                        
HUGETLB_SHARE=1 HUGETLB_ELFMAP=W linkhuge_rw (2M: 64):                           
HUGETLB_SHARE=1 HUGETLB_ELFMAP=W linkhuge_rw (1024M: 64):                        
HUGETLB_SHARE=0 HUGETLB_ELFMAP=RW linkhuge_rw (2M: 64):                          
HUGETLB_SHARE=0 HUGETLB_ELFMAP=RW linkhuge_rw (1024M: 64):                       
HUGETLB_SHARE=1 HUGETLB_ELFMAP=RW linkhuge_rw (2M: 64):                          
HUGETLB_SHARE=1 HUGETLB_ELFMAP=RW linkhuge_rw (1024M: 64):                       
chunk-overcommit (2M: 64):      PASS                                             
chunk-overcommit (1024M: 64):   PASS                                             
alloc-instantiate-race shared (2M: 64): PASS                                     
alloc-instantiate-race shared (1024M: 64):      PASS                             
alloc-instantiate-race private (2M: 64):        PASS                             
alloc-instantiate-race private (1024M: 64):     PASS                             
truncate_reserve_wraparound (2M: 64):   PASS                                     
truncate_reserve_wraparound (1024M: 64):        PASS                             
truncate_sigbus_versus_oom (2M: 64):    PASS                                     
truncate_sigbus_versus_oom (1024M: 64): PASS                                     
get_huge_pages (2M: 64):        PASS                                             
get_huge_pages (1024M: 64):     PASS                                             
shmoverride_linked (2M: 64):    PASS                                             
HUGETLB_SHM=yes shmoverride_linked (2M: 64):    PASS                             
shmoverride_linked_static (2M: 64):                                              
HUGETLB_SHM=yes shmoverride_linked_static (2M: 64):                              
LD_PRELOAD=libhugetlbfs.so shmoverride_unlinked (2M: 64):       PASS             
LD_PRELOAD=libhugetlbfs.so HUGETLB_SHM=yes shmoverride_unlinked (2M:             
64):       PASS                                                                  
quota.sh (2M: 64):      PASS                                                     
quota.sh (1024M: 64):   PASS                                                     
counters.sh (2M: 64):   PASS                                                     
counters.sh (1024M: 64):        FAIL mmap failed: Invalid argument               
mmap-gettest 10 35 (2M: 64):    PASS                                             
mmap-gettest 10 35 (1024M: 64): FAIL    Failed to mmap the hugetlb file:         
Cannot allocate memory                                                           
mmap-cow 34 35 (2M: 64):        PASS                                             
mmap-cow 34 35 (1024M: 64):     FAIL    Thread 15 (pid=514) failed               
set shmmax limit to 73400320                                                     
shm-fork 10 17 (2M: 64):        PASS                                             
set shmmax limit to 73400320                                                     
shm-fork 10 35 (2M: 64):        PASS                                             
set shmmax limit to 73400320                                                     
shm-getraw 35 /dev/full (2M: 64):       PASS                                     
fallocate_stress.sh (2M: 64):   libgcc_s.so.1 must be installed for              
pthread_cancel to work                                                           
fallocate_stress.sh (1024M: 64):                                                 
********** TEST SUMMARY                                                          
*                      2M             1024M                                      
*                      32-bit 64-bit  32-bit 64-bit                              
*     Total testcases:     0     93       0     83                               
*             Skipped:     0      0       0      0                               
*                PASS:     0     69       0     56                               
*                FAIL:     0      0       0      5                               
*    Killed by signal:     0      1       0      2                               
*   Bad configuration:     0      1       0      1                               
*       Expected FAIL:     0      0       0      0                               
*     Unexpected PASS:     0      0       0      0                               
*    Test not present:     0     21       0     19                               
* Strange test result:     0      1       0      0                               
**********                                                                       
                                                                          
Changes in v3:
  - Remove the config ARCH_WANT_HUGE_PMD_SHARE in arm64, thanks to
    Hanjun.
  - Rebased on top v5.2-rc7.
  - Dropped the reviewed-by Palmer, and did not add Catalin and Ingo
    acked-by.
       
Changes in v2:                                                                   
  - Merge comment fix about task size.                                           
  - Patch about mmap base address was merged separately.                         
  - Rebased on top of linux-next where series about the capability               
    to free gigantic pages regardless of the configuration was merged.           
  - Add huge pmd sharing as suggested by Mike Kravetz.                           
  - Gigantic page hstate is automatically created if CONTIG_ALLOC is             
    set, even if not explicitly asked for in command line, as suggested          
    by Mike.                                                                     
  - Replace #ifdef CONFIG_64BIT into IS_ENABLED(CONFIG_64BIT), as suggested      
    by Christoph Hellwig.                                       

Alexandre Ghiti (2):
  x86, arm64: Move ARCH_WANT_HUGE_PMD_SHARE config in arch/Kconfig
  riscv: Introduce huge page support for 32/64bit kernel

 arch/Kconfig                     |  3 +++
 arch/arm64/Kconfig               |  4 +--
 arch/riscv/Kconfig               |  8 ++++++
 arch/riscv/include/asm/hugetlb.h | 18 +++++++++++++
 arch/riscv/include/asm/page.h    | 10 ++++++++
 arch/riscv/include/asm/pgtable.h |  8 ++++--
 arch/riscv/mm/Makefile           |  2 ++
 arch/riscv/mm/hugetlbpage.c      | 44 ++++++++++++++++++++++++++++++++
 arch/x86/Kconfig                 |  4 +--
 9 files changed, 93 insertions(+), 8 deletions(-)
 create mode 100644 arch/riscv/include/asm/hugetlb.h
 create mode 100644 arch/riscv/mm/hugetlbpage.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
